@echo off
REM Instala / actualiza el servidor "Reinos de Aventura" (Windows).
REM Requisitos: Java 17 (Adoptium Temurin 17 recomendado). curl viene con Windows 10/11.
setlocal
cd /d "%~dp0"
set FORGE_VERSION=1.20.1-47.4.10
set PACK=%~dp0..\pack\pack.toml
set DIR=servidor-mc
if not exist %DIR% mkdir %DIR%
cd %DIR%

if not exist run.bat (
  echo ^>^> Descargando e instalando Forge %FORGE_VERSION%...
  curl -fL -o forge-installer.jar "https://maven.minecraftforge.net/net/minecraftforge/forge/%FORGE_VERSION%/forge-%FORGE_VERSION%-installer.jar" || goto :error
  java -jar forge-installer.jar --installServer || goto :error
  del /q forge-installer.jar forge-installer.jar.log 2>nul
)
if not exist packwiz-installer-bootstrap.jar curl -fL -o packwiz-installer-bootstrap.jar https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar
if not exist packwiz-installer.jar curl -fL -o packwiz-installer.jar https://github.com/packwiz/packwiz-installer/releases/latest/download/packwiz-installer.jar

echo ^>^> Instalando/actualizando mods...
java -jar packwiz-installer-bootstrap.jar --bootstrap-no-update -g -s server "%PACK%" || goto :error

if not exist server.properties copy ..\server.properties.plantilla server.properties >nul
echo -Xms6G -Xmx8G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15> user_jvm_args.txt

findstr /c:"eula=true" eula.txt >nul 2>&1
if not errorlevel 1 goto :eula_ok
set /p R=Aceptas la EULA de Minecraft (https://aka.ms/MinecraftEULA)? [s/N] 
if /i not "%R%"=="s" (echo Sin EULA no se puede iniciar. & pause & goto :eof)
echo eula=true> eula.txt
:eula_ok
echo ^>^> Listo. Para iniciar: entra a servidor\%DIR% y ejecuta run.bat
pause
goto :eof
:error
echo ERROR durante la instalacion. Revisa el mensaje de arriba.
pause
