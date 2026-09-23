#!/usr/bin/env python3
"""Genera los instaladores .bat de un clic a partir de pack/mods/*.pw.toml.

  instaladores/INSTALAR-MODS-JUGADOR.bat   -> mods de cliente en %APPDATA%\\.minecraft\\mods (TLauncher)
  instaladores/DESCARGAR-MODS-SERVIDOR.bat -> carpeta lista para subir al hosting por FileZilla

Ejecutar despues de cada cambio en el pack:  python3 herramientas/generar-instaladores.py
"""
import pathlib
import re
import tomllib

RAIZ = pathlib.Path(__file__).resolve().parent.parent
MODS = RAIZ / "pack" / "mods"
SALIDA = RAIZ / "instaladores"
DATAPACK_URL = "https://raw.githubusercontent.com/Darknow-web/Minecraft/HEAD/servidor/datapacks/reinos-economia.zip"
VERSION = tomllib.loads((RAIZ / "pack" / "pack.toml").read_text())["version"]


def cargar_mods():
    mods = []
    for f in sorted(MODS.glob("*.pw.toml"), key=lambda p: p.name.lower()):
        d = tomllib.loads(f.read_text())
        opcional = d.get("option", {}).get("optional", False)
        mods.append((d["name"], d["filename"], d["download"]["url"], d.get("side", "both"), opcional))
    return mods


def bat_escape(s):
    # En .bat el % se escribe %% (las URLs de Modrinth traen %2B y %20)
    return s.replace("%", "%%")


def lineas_descarga(mods, destino):
    out = []
    for i, (nombre, archivo, url, _, _) in enumerate(mods, 1):
        out.append(f'echo [{i}/{len(mods)}] {bat_escape(re.sub(r"[&|<>^]", "", nombre))}')
        out.append(f'curl -fsSL --retry 3 -o "{destino}\\{bat_escape(archivo)}" "{bat_escape(url)}" || set FALLO=1')
    return out


def escribir(nombre, lineas):
    SALIDA.mkdir(exist_ok=True)
    (SALIDA / nombre).write_text("\r\n".join(lineas) + "\r\n", encoding="utf-8", newline="")


def main():
    mods = cargar_mods()
    cliente = [m for m in mods if m[3] in ("both", "client") and not m[4]]
    servidor = [m for m in mods if m[3] in ("both", "server")]

    escribir("INSTALAR-MODS-JUGADOR.bat", [
        "@echo off",
        "chcp 65001 >nul",
        f"title Reinos de Aventura {VERSION} - instalador de mods",
        "echo ==========================================================",
        f"echo   REINOS DE AVENTURA {VERSION} - Instalador para jugadores",
        "echo ==========================================================",
        "echo.",
        "echo ANTES de seguir: en TLauncher elige la version \"Forge 1.20.1\",",
        "echo pulsa Instalar/Entrar una vez y cierra el juego.",
        "echo.",
        "echo Tus mods actuales (si tienes) se guardaran en una carpeta de respaldo.",
        "pause",
        'set "MC=%APPDATA%\\.minecraft"',
        'if not exist "%MC%" (echo No encontre la carpeta .minecraft. Abre TLauncher al menos una vez. & pause & exit /b 1)',
        'set "MODS=%MC%\\mods"',
        'if exist "%MODS%" move "%MODS%" "%MC%\\mods_respaldo_%RANDOM%" >nul',
        'mkdir "%MODS%"',
        "set FALLO=0",
        f"echo Descargando {len(cliente)} mods (unos 310 MB, solo la primera vez)...",
        *lineas_descarga(cliente, "%MODS%"),
        "echo.",
        'if "%FALLO%"=="1" (echo ALGUNOS MODS FALLARON. Revisa tu internet y vuelve a ejecutar este archivo. & pause & exit /b 1)',
        "echo ==========================================================",
        "echo   LISTO. Ahora en TLauncher:",
        "echo   1. Elige la version  Forge 1.20.1",
        "echo   2. Ajustes (engranaje) - Memoria: 6144 MB (5120 si tu PC tiene 8 GB)",
        "echo   3. Entrar - Multijugador - agrega la IP del servidor",
        "echo   4. La primera vez escribe en el chat:  /register TuClave TuClave",
        "echo      Las siguientes veces:               /login TuClave",
        "echo ==========================================================",
        "pause",
    ])

    config_ice = [
        "[Dragons]",
        "\t[Dragons.Griefing]",
        '\t\t"Dragon Griefing" = 1',
        '\t\t"Tamed Dragon Griefing" = false',
    ]
    props = (RAIZ / "servidor" / "server.properties.plantilla").read_text().splitlines()
    escribir("DESCARGAR-MODS-SERVIDOR.bat", [
        "@echo off",
        "chcp 65001 >nul",
        f"title Reinos de Aventura {VERSION} - archivos del servidor",
        "echo Descarga los mods del SERVIDOR en la carpeta \"subir-al-hosting\" (junto a este archivo).",
        "echo Luego sube su contenido al hosting con FileZilla (SFTP).",
        "pause",
        'cd /d "%~dp0"',
        'set "OUT=%~dp0subir-al-hosting"',
        'if exist "%OUT%" rmdir /s /q "%OUT%"',
        'mkdir "%OUT%\\mods" "%OUT%\\config"',
        "set FALLO=0",
        f"echo Descargando {len(servidor)} mods (unos 300 MB)...",
        *lineas_descarga(servidor, "%OUT%\\mods"),
        *[f'>>"%OUT%\\config\\iceandfire-common.toml" echo({l}' for l in config_ice],
        *[f'>>"%OUT%\\server.properties" echo({bat_escape(l)}' for l in props],
        'mkdir "%OUT%\\world\\datapacks"',
        f'curl -fsSL --retry 3 -o "%OUT%\\world\\datapacks\\reinos-economia.zip" "{DATAPACK_URL}" || set FALLO=1',
        "echo.",
        'if "%FALLO%"=="1" (echo ALGUNOS MODS FALLARON. Revisa tu internet y vuelve a ejecutar. & pause & exit /b 1)',
        "echo LISTO. Sube las carpetas mods, config y el archivo server.properties",
        "echo desde \"subir-al-hosting\" a la carpeta principal del servidor.",
        "echo Y el archivo world\\datapacks\\reinos-economia.zip a la carpeta world/datapacks del servidor.",
        'explorer "%OUT%"',
        "pause",
    ])
    print(f"cliente: {len(cliente)} mods, servidor: {len(servidor)} mods -> {SALIDA}")


if __name__ == "__main__":
    main()
