#!/usr/bin/env bash
# Instala / actualiza el servidor "Reinos de Aventura" (Linux/macOS).
# Requisitos: Java 17 (recomendado) o 21, y curl.
set -euo pipefail
cd "$(dirname "$0")"

FORGE_VERSION="1.20.1-47.4.10"
PACK="$(cd ../pack && pwd)/pack.toml"
DIR="${1:-servidor-mc}"
mkdir -p "$DIR" && cd "$DIR"

if [ ! -f run.sh ]; then
  echo ">> Descargando e instalando Forge $FORGE_VERSION..."
  curl -fL -o forge-installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/$FORGE_VERSION/forge-$FORGE_VERSION-installer.jar"
  java -jar forge-installer.jar --installServer
  rm -f forge-installer.jar forge-installer.jar.log
fi

[ -f packwiz-installer-bootstrap.jar ] || curl -fL -o packwiz-installer-bootstrap.jar \
  https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar
[ -f packwiz-installer.jar ] || curl -fL -o packwiz-installer.jar \
  https://github.com/packwiz/packwiz-installer/releases/latest/download/packwiz-installer.jar

echo ">> Instalando/actualizando mods desde $PACK ..."
java -jar packwiz-installer-bootstrap.jar --bootstrap-no-update -g -s server "$PACK"

[ -f server.properties ] || cp ../server.properties.plantilla server.properties
# RAM del servidor: 6G minimo, 8G ideal para 10 jugadores
echo "-Xms6G -Xmx8G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15" > user_jvm_args.txt

if [ ! -f eula.txt ] || ! grep -q "eula=true" eula.txt; then
  read -r -p "Aceptas la EULA de Minecraft (https://aka.ms/MinecraftEULA)? [s/N] " r
  [[ "$r" =~ ^[sS]$ ]] && echo "eula=true" > eula.txt || { echo "Sin EULA no se puede iniciar."; exit 1; }
fi

echo ">> Listo. Para iniciar:  cd servidor/$DIR && ./run.sh nogui"
