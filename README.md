# ⚔️ Reinos de Aventura

Modpack RPG para **Minecraft 1.20.1 (Forge 47.4.10)**, pensado para un servidor de **6 a 10 amigos**:
dragones, jefes épicos, cientos de mazmorras, magia, reliquias, mochilas, teletransportes y razas jugables.
Optimizado para correr en PCs normales.

- **98 mods**, todos de Modrinth (descarga automática y verificada).
- **Probado:** el servidor arranca sin errores críticos con todos los mods (≈4,7 GB de RAM en uso; descarga de ~310 MB).
- Todo está en formato [packwiz](https://packwiz.infra.link/): texto plano, fácil de actualizar y de configurar.

---

## 📦 ¿Qué trae?

| Categoría | Mods |
|---|---|
| 🐉 **Dragones y criaturas míticas** | Ice and Fire (dragones de fuego/hielo/rayo que puedes criar y montar, hidras, gorgonas, cíclopes, trolls, serpientes marinas), Dragon Mounts: Legacy |
| 👹 **Jefes y monstruos** | L_Ender's Cataclysm (jefes con arenas propias), Mowzie's Mobs, Mutant Monsters, Illager Invasion, Friends & Foes |
| 🦊 **Fauna y biomas** | Alex's Mobs (+90 animales), Naturalist, Terralith + Tectonic (terreno espectacular) |
| 🏰 **Mazmorras y estructuras** | When Dungeons Arise, todos los YUNG's (mazmorras, fortalezas, templos, minas, puentes), Dungeons and Taverns, Towns and Towers, Repurposed Structures, MVS Voyager Structures, Explorify, Structory |
| 🎁 **Botín** | Lootr (cada jugador tiene su propio botín en cada cofre — ideal para grupos), Apotheosis (armas con rareza y afijos, encantamientos nuevos, jefes de mundo) |
| ✨ **Magia y artefactos** | Iron's Spells 'n Spellbooks (hechizos y libros), Artifacts (reliquias en mazmorras), Simply Swords (armas únicas), Immersive Armors |
| ⚔️ **Combate** | Better Combat (combos estilo RPG), Combat Roll (esquivar rodando) |
| 🧬 **Personalización** | Origins (elige tu raza al entrar: cada una con poderes y debilidades) |
| 🎒 **Mochilas** | Sophisticated Backpacks (mejorables), Traveler's Backpack (con tanques y herramientas) |
| 🌀 **Viajes** | Waystones (red de teletransportes), Explorer's Compass (encuentra estructuras), Xaero's Minimap + World Map (mapa y puntos compartibles) |
| 🍖 **Vida y construcción** | Farmer's Delight, Aquaculture 2 (pesca), Supplementaries, Comforts (sacos de dormir), Carry On |
| 💰 **Economía y misiones** | Lightman's Currency (monedas, billetera, cajeros, tiendas de jugadores y comerciantes NPC), Bountiful (tablones de misiones en las aldeas que pagan con monedas) |
| 👥 **Multijugador** | Open Parties and Claims (equipos y proteger terrenos), Simple Voice Chat (voz por proximidad), Corpse (tus cosas quedan en tu cadáver al morir), Auth (contraseña `/register` y `/login` para servidores con TLauncher) |
| 🚀 **Rendimiento** | Embeddium, ModernFix, FerriteCore, Canary, Entity Culling, ImmediatelyFast, Memory Leak Fix, AI Improvements, Clumps, spark, Chunky |
| 🛠️ **Utilidades** | JEI (recetas), Jade (info al mirar bloques), AppleSkin, Mouse Tweaks, Controlling, Better Advancements |
| 🌈 **Opcional** | Oculus (shaders, desactivado por defecto — solo PCs potentes) |

Lista exacta con versiones: carpeta [`pack/mods/`](pack/mods).

---

## 💻 Requisitos

| | Mínimo | Recomendado |
|---|---|---|
| **Jugadores (PC)** | 8 GB de RAM, gráfica integrada moderna | 16 GB de RAM, gráfica dedicada |
| RAM asignada a Minecraft | 3 GB (PC de 8 GB) | **4 GB** (no más: medido, el juego usa ~1,1 GB reales) |
| **Servidor** (6–10 jugadores) | 4 núcleos, 8 GB de RAM | 4+ núcleos rápidos, 10–12 GB de RAM, SSD |
| Java | 17 (recomendado) | Temurin 17 |

---

## 🎮 Instalación para JUGADORES con TLauncher (lo más fácil)

1. En TLauncher elige la versión **Forge 1.20.1**, pulsa *Entrar* una vez (se instala) y cierra el juego.
2. Descarga **`instaladores/INSTALAR-MODS-JUGADOR.bat`** y ábrelo con doble clic.
   Descarga los 96 mods (~310 MB) directamente en `%APPDATA%\.minecraft\mods` y guarda tus mods anteriores en un respaldo.
   Si Windows muestra *"Windows protegió su PC"*: *Más información → Ejecutar de todas formas*.
3. En TLauncher: engranaje → **Memoria 4096 MB** (3072 si tu PC tiene 8 GB). **No pongas más**: si asignas casi toda tu RAM, Windows se queda sin memoria y el juego se congela en "Cargando terreno".
4. *Multijugador* → IP del servidor. La primera vez escribe `/register TuClave TuClave`; después, `/login TuClave`.

## 🎮 Instalación con Prism Launcher o Modrinth App (alternativa)

1. Instala **[Prism Launcher](https://prismlauncher.org/)** (gratis, recomendado) o la **[Modrinth App](https://modrinth.com/app)**.
2. Descarga el archivo **`ReinosDeAventura-1.3.0.mrpack`** (en la carpeta [`dist/`](dist) o en *Releases* de GitHub).
3. **Prism:** *Añadir instancia → Importar* → elige el `.mrpack`.
   **Modrinth App:** arrastra el `.mrpack` a la ventana.
4. En la instancia: *Editar → Ajustes → Memoria* → **Máximo 4096 MB** (3072 si tu PC tiene 8 GB).
5. Abre el juego → *Multijugador* → agrega la IP del servidor.

> ¿Quieres shaders? En Prism: *Editar → Mods* → activa **Oculus**, y pon un pack como *Complementary Shaders* en `shaderpacks/`.

---

## 🖥️ Montar el SERVIDOR

Hay tres opciones. **Elige una.**

### Opción A — En tu propia PC (gratis)

1. Instala **Java 17** ([Adoptium Temurin 17](https://adoptium.net/temurin/releases/?version=17)).
2. Descarga este repositorio (botón verde *Code → Download ZIP*) y descomprímelo.
3. Ejecuta **`servidor/instalar-servidor.bat`** (Windows) o `servidor/instalar-servidor.sh` (Linux/Mac).
   Descarga Forge y todos los mods, crea la configuración y te pide aceptar la EULA.
4. Entra a `servidor/servidor-mc/` y ejecuta **`run.bat`** (o `./run.sh nogui`).
5. Para que tus amigos entren desde internet (elige uno):
   - **[playit.gg](https://playit.gg/)** — lo más fácil, sin tocar el router. Crea un túnel *Minecraft Java* al puerto `25565`
     y otro *UDP* al `24454` para el chat de voz. Comparte la dirección que te da.
   - **Abrir puertos en el router:** `25565 TCP` y `24454 UDP` hacia la IP local de tu PC.

> La PC que hace de servidor necesita ~8 GB libres **solo para el servidor**. Si también vas a jugar en ella, necesitas 16 GB+.

### Opción B — Hosting pagado (lo más cómodo, 24/7)

Busca un hosting de Minecraft con **8–10 GB de RAM** que permita Forge (ej.: BisectHosting, Apex, Shockbyte, PebbleHost…).
1. Instala **Forge 1.20.1 – 47.4.10** desde su panel.
2. En tu PC ejecuta **`instaladores/DESCARGAR-MODS-SERVIDOR.bat`**: crea la carpeta `subir-al-hosting` con `mods/`, `config/` y `server.properties`.
3. Súbela a la carpeta principal del servidor con **FileZilla** (datos SFTP en el panel) y enciéndelo.
4. Sube `world/datapacks/reinos-economia.zip` a la carpeta `world/datapacks/` del servidor: hace que las misiones paguen con monedas.

> **TLauncher:** el servidor viene con `online-mode=false` para aceptar cuentas no premium, y el mod **Auth** obliga a cada jugador a usar contraseña (`/register` y `/login`) para que nadie entre con el nombre de otro.

### Opción C — VPS con Docker

```bash
cd servidor
docker compose up -d        # descarga Forge + mods y arranca
docker attach reinos-de-aventura   # consola (salir: Ctrl+P, Ctrl+Q)
```

---

## 🚦 Primer arranque (IMPORTANTE para el rendimiento)

1. Hazte operador desde la consola del servidor: `op TuNick`
2. La whitelist viene **apagada**: con TLauncher (modo offline) el panel suele guardar el UUID *premium* del nombre y el jugador no puede entrar. La protección la da el mod **Auth** (`/register` y `/login`). Para dar `op`, hazlo **mientras el jugador está conectado** (así usa su UUID correcto).
3. **Pre-genera el mundo** (evita lag al explorar, porque hay muchas estructuras):
   ```
   chunky radius 3000
   chunky start
   ```
   Tarda de 1 a 3 horas; déjalo corriendo sin jugadores. `chunky progress` para ver el avance.
4. Pon una **waystone global** en el spawn (requiere creativo con la config por defecto).
5. Si hay lag, usa `/spark profiler start` y luego `/spark profiler stop` — te da un enlace que dice qué lo causa.

---

## ⚙️ Configuración

Todo es configurable. Lo que ya viene ajustado:

| Qué | Ajuste | Dónde |
|---|---|---|
| Dragones destruyen el terreno | Reducido: solo rompen bloques débiles; los dragones domados no rompen nada | `pack/config/iceandfire-common.toml` |
| Distancia de visión/simulación | 8 / 6 (balance ideal) | `server.properties` |
| Volar (dragones, habilidades) | Permitido para que no expulse a nadie | `server.properties` |
| Protección del spawn | 0 (se usa Open Parties and Claims) | `server.properties` |

Otros ajustes comunes (los archivos aparecen en `servidor-mc/config/` tras el primer arranque):

- **Más/menos dragones y cuevas de dragón:** `iceandfire-common.toml` → `Generate Dragon Cave Chance` (número más alto = menos).
- **Teletransporte:** `waystones-common.toml` → `blocksPerXpLevel` (costo en XP), `warpStoneCooldown`.
- **Dificultad de jefes:** `cataclysm-common.toml`, `mowziesmobs-common.toml` (vida y daño de cada jefe).
- **Hechizos:** carpeta `irons_spellbooks_spell_config/` (daño, maná y cooldown de cada hechizo).
- **Tamaño de terrenos protegidos:** `servidor-mc/world/serverconfig/openpartiesandclaims-server.toml`.
- **Mantener inventario:** `/gamerule keepInventory true` (no hace falta: Corpse guarda tus cosas en tu cadáver).
- **Mob griefing (creepers, jefes rompiendo):** `/gamerule mobGriefing false`.

Para que un ajuste llegue a **todos** (servidor y jugadores), pon el archivo en `pack/config/` y vuelve a exportar (ver abajo).

---

## 💰 Economía

- **Monedas:** cobre → hierro → oro → esmeralda → diamante → netherite (10 de una = 1 de la siguiente). Salen de mobs, cofres y misiones.
- **Misiones:** busca el **tablón de misiones** (Bounty Board) en las aldeas, o fabrícalo. Entrega lo que pide y recibe monedas o botín. Las misiones cambian con el tiempo.
- **Tiendas:** fabrica un *Trader* de Lightman's Currency, pon objetos y precio, y otros jugadores te compran aunque no estés conectado.
- **Admin:** para un comerciante NPC que venda objetos raros, crea un Trader en modo creativo y llénalo de objetos. Los precios de las misiones se ajustan en `servidor/datapacks/reinos-economia/`.

## 📜 Crónicas de Valdrath (historia del servidor)

Campaña propia incluida en el datapack `reinos-economia.zip` (solo servidor, los jugadores no instalan nada):
- Al entrar por primera vez cada jugador recibe el libro **Crónicas de Valdrath** (si lo pierde: `/trigger libro`).
- Pestaña **Crónicas de Valdrath** en los logros (tecla **L**) con 7 capítulos y 4 logros secretos/extra, cada uno con monedas, XP y un anuncio en el chat.
- Se genera con `python3 herramientas/generar-historia.py` (textos, recompensas y jefes se editan ahí).

## 🗺️ Ruta de aventura sugerida (decenas de horas)

1. **Supervivencia y raza** — Al entrar eliges tu **Origin**. Consigue una mochila, comida de Farmer's Delight y un saco de dormir.
2. **Explorar** — Busca pueblos de Towns and Towers, tabernas y **waystones** (actívalas para crear tu red de viaje). El *Explorer's Compass* te guía a estructuras.
3. **Primeras mazmorras** — YUNG's Better Dungeons, mazmorras de When Dungeons Arise. Aquí salen **Artifacts** y equipo con rareza de **Apotheosis**.
4. **Magia** — Mesa de inscripción y libros de hechizos de **Iron's Spells**; mata magos y saquea torres para pergaminos.
5. **Jefes intermedios** — Ferrous Wroughtnaut, Frostmaw (Mowzie's); gólems y bestias de Cataclysm; mutantes.
6. **Dragones** — Encuentra una cueva o nido de dragón, derrota al dragón o roba un **huevo** e incúbalo (en fuego o en agua según el tipo). Criarlo lleva tiempo; de adulto se puede montar.
7. **El Nether** — Fortalezas renovadas, bastiones y jefes de Cataclysm como Ignis.
8. **Final** — Ender Dragon, luego los jefes grandes de Cataclysm (Ignis, The Harbinger, The Leviathan, Ender Guardian…).

---

## 🔧 Para el administrador: cambiar mods

Se usa [packwiz](https://packwiz.infra.link/). Instálalo (`go install github.com/packwiz/packwiz@latest`) y desde la carpeta `pack/`:

```bash
packwiz mr add nombre-del-mod     # agregar un mod de Modrinth
packwiz remove nombre-del-mod     # quitar
packwiz update --all              # actualizar todo (¡prueba el servidor antes de jugar!)
packwiz mr export -o ../dist/ReinosDeAventura-X.Y.Z.mrpack   # nuevo archivo para jugadores
```

Luego regenera los instaladores con `python3 herramientas/generar-instaladores.py`, vuelve a ejecutar `instalar-servidor` (actualiza los mods del servidor) y reparte el nuevo `.mrpack`.
Al subir cambios de `pack/` a GitHub, la acción *Exportar modpack* genera el `.mrpack` automáticamente
(y si creas un tag `v1.0.1`, lo publica como *Release*).

**Servidor y jugadores deben tener la misma versión del pack**, o el juego no dejará conectar.

---

## 🪶 Rendimiento en PCs con poca RAM (medido)

Probado con un cliente real conectado al servidor (distancia de renderizado 8):
- Memoria **realmente usada** dentro del mundo: **~1,1 GB**. Con **3 GB asignados** el juego va fluido (pausas de limpieza de ~25 ms cada 20 s, sin bloqueos).
- El instalador activa **ModernFix dynamic resources** (carga modelos solo cuando se usan): menos RAM y entrada más rápida.
- El error típico es asignar **demasiada** memoria: con 9,5 GB en una PC de 12 GB, Windows se quedó sin RAM y el juego se congeló.

| RAM de la PC | Memoria en TLauncher |
|---|---|
| 8 GB | 3072 MB |
| 12–16 GB | 4096 MB |
| 32 GB | 4096–6144 MB |

## ❓ Problemas comunes

- **"Mod rejections" / no conecta:** el jugador tiene otra versión del pack → reinstalar el `.mrpack` más reciente.
- **Crashea al abrir:** poca RAM asignada, o Java equivocado. Usa Java 17 y 6 GB.
- **Lag al explorar:** falta pre-generar con Chunky, o baja `view-distance` a 7.
- **FPS bajos:** en *Opciones → Vídeo*, distancia de renderizado 8–10 y partículas "Reducidas". No actives Oculus.
