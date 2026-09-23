#!/usr/bin/env python3
"""Genera la campana "Cronicas de Valdrath" dentro del datapack del servidor.

Crea en servidor/datapacks/reinos-economia/data/reinos/:
  advancements/historia/*.json  -> capitulos (pestana "Cronicas de Valdrath", tecla L)
  functions/*.mcfunction        -> libro de bienvenida, recompensas y /trigger libro
y en data/minecraft/tags/functions/ los tags load/tick.

Luego empaqueta servidor/datapacks/reinos-economia.zip.
Ejecutar:  python3 herramientas/generar-historia.py
"""
import json
import pathlib
import shutil
import zipfile

RAIZ = pathlib.Path(__file__).resolve().parent.parent
DP = RAIZ / "servidor" / "datapacks" / "reinos-economia"
NS = DP / "data" / "reinos"

# ---------------------------------------------------------------- libro
PAGINAS = [
    "§4§lCRÓNICAS DE VALDRATH§r\n\n\nEscritas por el Último Cronista, que en el proceso perdió tres plumas, dos dedos y casi toda la paciencia.",
    "Hace mil inviernos, Valdrath era el reino más próspero del mundo.\n\nSus reyes pactaron con los dragones: oro a cambio de paz.\n\nUn día el tesorero se equivocó en las cuentas.",
    "Los dragones despertaron.\n\nEl cielo ardió, los mares se congelaron y las tormentas cayeron como lanzas.\n\nLos muertos se levantaron de las criptas... y los vivos, de la siesta. Demasiado tarde.",
    "Hoy Valdrath es ruinas, mazmorras y bestias.\n\nLa profecía dice que llegarán forasteros sin memoria, con ropa extraña y un hambre terrible.\n\nSon ustedes.\n\n§oQué decepción.§r",
    "Su misión: completar las siete crónicas y hacer renacer el reino.\n\nCada capítulo se paga con monedas del antiguo tesoro real.\n\nPulsa §lL§r y abre la pestaña §lCrónicas de Valdrath§r.",
    "§lCAPÍTULOS§r\n\nI. El Despertar\nII. Los Caminos Perdidos\nIII. Las Criptas\nIV. El Arte Arcano\nV. Sangre de Dragón\nVI. Los Guardianes\nVII. El Reino Renace",
    "§lCONSEJOS DEL CRONISTA§r\n\n- Tablones de misiones en las aldeas: pagan monedas.\n- Activa cada waystone que encuentres.\n- Al morir, tus cosas esperan en tu cadáver.\n- ¿Perdiste este libro? /trigger libro",
    "Y recuerda, forastero:\n\nen Valdrath los cofres guardan botín para cada uno...\n\npero las tumbas también tienen sitio para cada uno.\n\n§4Buena suerte. La vas a necesitar.§r",
]


def snbt_str(s):
    return "'" + s.replace("\\", "\\\\").replace("'", "\\'") + "'"


def comando_libro():
    pages = ",".join(snbt_str(json.dumps({"text": p}, ensure_ascii=False)) for p in PAGINAS)
    return ('give @s written_book{title:"Crónicas de Valdrath",author:"El Último Cronista",'
            f"pages:[{pages}]}}")


# ---------------------------------------------------------------- capitulos
def item(*ids):
    return {"trigger": "minecraft:inventory_changed", "conditions": {"items": [{"items": list(ids)}]}}


def mato(entidad):
    return {"trigger": "minecraft:player_killed_entity", "conditions": {"entity": {"type": entidad}}}


def en_estructura(est):
    return {"trigger": "minecraft:location", "conditions": {"player": {"location": {"structure": est}}}}


def cualquiera(criterios):
    """criterios: dict nombre->criterio. Basta con cumplir uno."""
    return criterios, [list(criterios)]


def monedas(tipo, n):
    return f"give @s lightmanscurrency:coin_{tipo} {n}"


def anuncio(texto, color="gold"):
    return ('tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},'
            '{"selector":"@s","color":"yellow"},'
            f'{{"text":" {texto}","color":"{color}"}}]')


SONIDO = "playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1"

MAZMORRAS = [
    "betterdungeons:skeleton_dungeon", "betterdungeons:zombie_dungeon", "betterdungeons:spider_dungeon",
    "betterdungeons:small_dungeon", "betterdungeons:small_nether_dungeon",
    "dungeons_arise:infested_temple", "dungeons_arise:plague_asylum", "dungeons_arise:mining_system",
    "dungeons_arise:foundry", "dungeons_arise:keep_kayra", "dungeons_arise:illager_fort",
    "dungeons_arise:thornborn_towers", "dungeons_arise:scorched_mines", "dungeons_arise:shiraz_palace",
    "dungeons_arise:monastery", "dungeons_arise:coliseum", "dungeons_arise:typhon",
    "dungeons_arise:abandoned_temple", "dungeons_arise:mushroom_mines", "dungeons_arise:undead_pirate_ship",
    "minecraft:stronghold", "minecraft:ancient_city",
]

JEFES_GUARDIANES = [
    "mowziesmobs:ferrous_wroughtnaut", "mowziesmobs:frostmaw", "mowziesmobs:umvuthi", "mowziesmobs:sculptor",
    "cataclysm:netherite_monstrosity", "cataclysm:ancient_remnant", "cataclysm:maledictus", "cataclysm:scylla",
    "minecraft:wither", "minecraft:warden", "minecraft:elder_guardian",
]
SENORES = ["cataclysm:ignis", "cataclysm:the_harbinger", "cataclysm:the_leviathan", "cataclysm:ender_guardian"]
DRAGONES = ["iceandfire:fire_dragon", "iceandfire:ice_dragon", "iceandfire:lightning_dragon"]
HUEVOS = [f"iceandfire:dragonegg_{c}" for c in
          ["red", "green", "bronze", "gray", "blue", "white", "sapphire", "silver",
           "electric", "amythest", "copper", "black"]]
LIBROS = ["irons_spellbooks:scroll"] + [f"irons_spellbooks:{b}_spell_book" for b in
          ["wimpy", "copper", "iron", "gold", "diamond", "netherite", "legendary", "rotten", "blaze",
           "ice", "druidic", "villager", "evoker", "cursed_doll", "necronomicon", "dragonskin"]]

# (id, padre, icono, titulo, descripcion, marco, criterios, requisitos, xp, comandos)
CAPITULOS = []


def cap(id_, padre, icono, titulo, desc, criterios, req=None, marco="task", xp=0, cmds=(), oculto=False):
    CAPITULOS.append(dict(id=id_, padre=padre, icono=icono, titulo=titulo, desc=desc, marco=marco,
                          criterios=criterios, req=req, xp=xp, cmds=list(cmds), oculto=oculto))


cap("cap1_despertar", "raiz", "minecraft:red_bed", "I. El Despertar",
    "Duerme una noche entera sin que nada te coma.",
    {"dormir": {"trigger": "minecraft:slept_in_bed"}}, xp=50,
    cmds=[monedas("iron", 5), anuncio("sobrevivió a su primera noche en Valdrath. Los monstruos están decepcionados.")])

c, r = cualquiera({
    "piedra": item("waystones:warp_stone"), "pergamino": item("waystones:warp_scroll"),
    "retorno": item("waystones:return_scroll"), "vinculado": item("waystones:bound_scroll"),
    "brujula": item("explorerscompass:explorerscompass"),
})
cap("cap2_caminos", "cap1_despertar", "waystones:warp_stone", "II. Los Caminos Perdidos",
    "Consigue una piedra de viaje, un pergamino de waystone o la brújula del explorador.",
    c, r, xp=100,
    cmds=[monedas("gold", 1), monedas("iron", 5),
          anuncio("encontró los caminos perdidos. Ahora puede perderse mucho más lejos.")])

c, r = cualquiera({e.split(":")[1]: en_estructura(e) for e in MAZMORRAS})
cap("cap3_criptas", "cap2_caminos", "minecraft:skeleton_skull", "III. Las Criptas",
    "Entra en una mazmorra antigua de Valdrath. Lleva antorchas. Y valor. Sobre todo antorchas.",
    c, r, xp=150,
    cmds=[monedas("gold", 2),
          anuncio("bajó a las criptas. Algo allá abajo lo miró de vuelta... y tenía hambre.", "red")])

c, r = cualquiera({b.split(":")[1]: item(b) for b in LIBROS})
cap("cap4_arcano", "cap3_criptas", "irons_spellbooks:copper_spell_book", "IV. El Arte Arcano",
    "Consigue un pergamino mágico o un libro de hechizos.",
    c, r, xp=200,
    cmds=[monedas("gold", 3),
          anuncio("aprendió magia arcana. Que alguien esconda todo lo inflamable.", "light_purple")])

crit = {"huevo_" + h.split("_")[-1]: item(h) for h in HUEVOS}
crit.update({"mato_" + d.split(":")[1]: mato(d) for d in DRAGONES})
c, r = cualquiera(crit)
cap("cap5_dragon", "cap4_arcano", "iceandfire:dragonegg_red", "V. Sangre de Dragón",
    "Consigue un huevo de dragón o derrota a un dragón. Esto no puede salir mal.",
    c, r, marco="goal", xp=400,
    cmds=[monedas("emerald", 1),
          anuncio("tiene sangre de dragón en las manos. Esperemos que no sea la suya.", "gold")])

c, r = cualquiera({j.split(":")[1]: mato(j) for j in JEFES_GUARDIANES})
cap("cap6_guardianes", "cap5_dragon", "minecraft:wither_skeleton_skull", "VI. Los Guardianes",
    "Derrota a un guardián antiguo: un jefe de Mowzie's, de Cataclysm, el Wither o el Warden.",
    c, r, marco="goal", xp=600,
    cmds=[monedas("emerald", 2),
          anuncio("derribó a un Guardián de Valdrath. Los bardos ya ensayan la canción (desafinada).")])

crit = {"dragon_del_end": mato("minecraft:ender_dragon")}
crit.update({s.split(":")[1]: mato(s) for s in SENORES})
cap("cap7_renace", "cap6_guardianes", "minecraft:dragon_head", "VII. El Reino Renace",
    "Derrota al Dragón del End y a uno de los grandes señores: Ignis, el Harbinger, el Leviatán o el Guardián del End.",
    crit, [["dragon_del_end"], [s.split(":")[1] for s in SENORES]], marco="challenge", xp=2000,
    cmds=[monedas("diamond", 1),
          'title @a title {"text":"¡VALDRATH RENACE!","color":"gold","bold":true}',
          'title @a subtitle [{"text":"gracias a ","color":"yellow"},{"selector":"@s","color":"white"}]',
          anuncio("completó las Crónicas de Valdrath. Que suenen las campanas... y que alguien limpie toda esta sangre.", "gold")])

# --- secundarios (humor) ---
cap("extra_creeper", "raiz", "minecraft:creeper_head", "Te lo advertimos",
    "Muere abrazado por un creeper.",
    {"boom": {"trigger": "minecraft:entity_killed_player", "conditions": {"entity": {"type": "minecraft:creeper"}}}},
    cmds=[monedas("copper", 3),
          anuncio("abrazó a un creeper. El creeper no sabía de límites.", "green")], oculto=True)
cap("extra_mercader", "raiz", "lightmanscurrency:coin_gold", "Mercader de Valdrath",
    "Consigue tu primera moneda de oro. El tesorero estaría orgulloso (y sospecharía).",
    {"oro": item("lightmanscurrency:coin_gold")}, cmds=[])
cap("extra_cazador", "raiz", "bountiful:bounty", "Cazarrecompensas",
    "Acepta tu primera misión de un tablón de misiones.",
    {"mision": item("bountiful:bounty")}, cmds=[monedas("iron", 3)])
cap("extra_jinete", "cap5_dragon", "minecraft:saddle", "Jinete del Cielo",
    "Monta un dragón. Consejo: no mires abajo.",
    *cualquiera({d.split(":")[1]: {"trigger": "minecraft:started_riding",
                                    "conditions": {"player": {"vehicle": {"type": d}}}}
                 for d in DRAGONES + ["dragonmounts:dragon"]}),
    marco="goal", xp=300,
    cmds=[monedas("emerald", 1), anuncio("montó un dragón. El dragón aún no decide si lo permite.", "aqua")])


def escribir_json(ruta, datos):
    ruta.parent.mkdir(parents=True, exist_ok=True)
    ruta.write_text(json.dumps(datos, ensure_ascii=False, indent=2), encoding="utf-8")


def escribir(ruta, texto):
    ruta.parent.mkdir(parents=True, exist_ok=True)
    ruta.write_text(texto, encoding="utf-8")


def main():
    for sub in ("advancements", "functions"):
        shutil.rmtree(NS / sub, ignore_errors=True)
    shutil.rmtree(DP / "data" / "minecraft", ignore_errors=True)

    escribir_json(NS / "advancements/historia/raiz.json", {
        "display": {
            "icon": {"item": "minecraft:written_book"},
            "title": {"text": "Crónicas de Valdrath", "color": "gold"},
            "description": {"text": "El reino cayó. Tú lo harás renacer. Probablemente."},
            "background": "minecraft:textures/block/deepslate_bricks.png",
            "show_toast": False, "announce_to_chat": False,
        },
        "criteria": {"llegar": {"trigger": "minecraft:tick"}},
        "rewards": {"function": "reinos:bienvenida"},
    })
    for c in CAPITULOS:
        adv = {
            "parent": f"reinos:historia/{c['padre']}",
            "display": {
                "icon": {"item": c["icono"]},
                "title": {"text": c["titulo"]},
                "description": {"text": c["desc"]},
                "frame": c["marco"], "show_toast": True, "announce_to_chat": True, "hidden": c["oculto"],
            },
            "criteria": c["criterios"],
            "rewards": {"function": f"reinos:recompensas/{c['id']}"},
        }
        if c["req"]:
            adv["requirements"] = c["req"]
        if c["xp"]:
            adv["rewards"]["experience"] = c["xp"]
        escribir_json(NS / f"advancements/historia/{c['id']}.json", adv)
        escribir(NS / f"functions/recompensas/{c['id']}.mcfunction", "\n".join(c["cmds"] + [SONIDO]) + "\n")

    escribir(NS / "functions/dar_libro.mcfunction", comando_libro() + "\n")
    escribir(NS / "functions/bienvenida.mcfunction", "\n".join([
        "function reinos:dar_libro",
        'tellraw @s ["",{"text":"\\n☠ ","color":"dark_red"},{"text":"Bienvenido a Valdrath, forastero.","color":"gold","bold":true},'
        '{"text":"\\nLee el libro que llevas encima. Pulsa ","color":"gray"},{"text":"L","color":"yellow","bold":true},'
        '{"text":" para ver tus Crónicas.\\n","color":"gray"}]',
        "playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 1.4",
    ]) + "\n")
    escribir(NS / "functions/load.mcfunction", "scoreboard objectives add libro trigger\n")
    escribir(NS / "functions/tick.mcfunction", "\n".join([
        "execute as @a[scores={libro=1..}] run function reinos:dar_libro",
        "scoreboard players reset @a[scores={libro=1..}] libro",
        "scoreboard players enable @a libro",
    ]) + "\n")
    escribir_json(DP / "data/minecraft/tags/functions/load.json", {"values": ["reinos:load"]})
    escribir_json(DP / "data/minecraft/tags/functions/tick.json", {"values": ["reinos:tick"]})

    escribir_json(DP / "pack.mcmeta", {"pack": {
        "pack_format": 15,
        "description": "Reinos de Aventura: Crónicas de Valdrath + misiones que pagan con monedas"}})

    destino = DP.parent / "reinos-economia.zip"
    destino.unlink(missing_ok=True)
    with zipfile.ZipFile(destino, "w", zipfile.ZIP_DEFLATED) as z:
        for f in sorted(DP.rglob("*")):
            if f.is_file():
                z.write(f, f.relative_to(DP).as_posix())
    print(f"{len(CAPITULOS)} logros + raiz -> {destino}")


if __name__ == "__main__":
    main()
