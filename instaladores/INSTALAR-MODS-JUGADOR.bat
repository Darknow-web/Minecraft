@echo off
chcp 65001 >nul
title Reinos de Aventura 1.0.0 - instalador de mods
echo ==========================================================
echo   REINOS DE AVENTURA 1.0.0 - Instalador para jugadores
echo ==========================================================
echo.
echo ANTES de seguir: en TLauncher elige la version "Forge 1.20.1",
echo pulsa Instalar/Entrar una vez y cierra el juego.
echo.
echo Tus mods actuales (si tienes) se guardaran en una carpeta de respaldo.
pause
set "MC=%APPDATA%\.minecraft"
if not exist "%MC%" (echo No encontre la carpeta .minecraft. Abre TLauncher al menos una vez. & pause & exit /b 1)
set "MODS=%MC%\mods"
if exist "%MODS%" move "%MODS%" "%MC%\mods_respaldo_%RANDOM%" >nul
mkdir "%MODS%"
set FALLO=0
echo Descargando 92 mods (unos 310 MB, solo la primera vez)...
echo [1/92] AI Improvements: Performance Tuning
curl -fsSL --retry 3 -o "%MODS%\AI-Improvements-1.20-0.5.2.jar" "https://cdn.modrinth.com/data/DSVgwcji/versions/eJihmpNQ/AI-Improvements-1.20-0.5.2.jar" || set FALLO=1
echo [2/92] Alex's Mobs
curl -fsSL --retry 3 -o "%MODS%\alexsmobs-1.22.9.jar" "https://cdn.modrinth.com/data/2cMuAZAp/versions/XoIASRVU/alexsmobs-1.22.9.jar" || set FALLO=1
echo [3/92] Apotheosis
curl -fsSL --retry 3 -o "%MODS%\Apotheosis-1.20.1-7.4.8.jar" "https://cdn.modrinth.com/data/rqFWfVlz/versions/tT3CLYvK/Apotheosis-1.20.1-7.4.8.jar" || set FALLO=1
echo [4/92] Apothic Attributes
curl -fsSL --retry 3 -o "%MODS%\ApothicAttributes-1.20.1-1.3.7.jar" "https://cdn.modrinth.com/data/DGaH8Rh0/versions/fwL9CWGd/ApothicAttributes-1.20.1-1.3.7.jar" || set FALLO=1
echo [5/92] AppleSkin
curl -fsSL --retry 3 -o "%MODS%\appleskin-forge-mc1.20.1-2.5.1.jar" "https://cdn.modrinth.com/data/EsAfCjCV/versions/XdXDExVF/appleskin-forge-mc1.20.1-2.5.1.jar" || set FALLO=1
echo [6/92] Aquaculture 2
curl -fsSL --retry 3 -o "%MODS%\Aquaculture-1.20.1-2.5.7.jar" "https://cdn.modrinth.com/data/Vl1uNAuy/versions/wNiFoROs/Aquaculture-1.20.1-2.5.7.jar" || set FALLO=1
echo [7/92] Architectury API
curl -fsSL --retry 3 -o "%MODS%\architectury-9.2.14-forge.jar" "https://cdn.modrinth.com/data/lhGA9TYQ/versions/1MKTLiiG/architectury-9.2.14-forge.jar" || set FALLO=1
echo [8/92] Artifacts
curl -fsSL --retry 3 -o "%MODS%\artifacts-forge-9.5.19.jar" "https://cdn.modrinth.com/data/P0Mu4wcQ/versions/lrLPBSzq/artifacts-forge-9.5.19.jar" || set FALLO=1
echo [9/92] AttributeFix
curl -fsSL --retry 3 -o "%MODS%\AttributeFix-Forge-1.20.1-21.0.5.jar" "https://cdn.modrinth.com/data/lOOpEntO/versions/ihWybkI9/AttributeFix-Forge-1.20.1-21.0.5.jar" || set FALLO=1
echo [10/92] Balm
curl -fsSL --retry 3 -o "%MODS%\balm-forge-1.20.1-7.3.43.jar" "https://cdn.modrinth.com/data/MBAkmtvl/versions/1VlYVa3k/balm-forge-1.20.1-7.3.43.jar" || set FALLO=1
echo [11/92] Better Advancements
curl -fsSL --retry 3 -o "%MODS%\BetterAdvancements-Forge-1.20.1-0.6.0.73.jar" "https://cdn.modrinth.com/data/Q2OqKxDG/versions/zKOCnRdK/BetterAdvancements-Forge-1.20.1-0.6.0.73.jar" || set FALLO=1
echo [12/92] Better Combat
curl -fsSL --retry 3 -o "%MODS%\bettercombat-forge-1.9.0+1.20.1.jar" "https://cdn.modrinth.com/data/5sy6g3kz/versions/rnhiaw3t/bettercombat-forge-1.9.0%%2B1.20.1.jar" || set FALLO=1
echo [13/92] Caelus API
curl -fsSL --retry 3 -o "%MODS%\caelus-forge-3.2.0+1.20.1.jar" "https://cdn.modrinth.com/data/40FYwb4z/versions/mRry0DgY/caelus-forge-3.2.0%%2B1.20.1.jar" || set FALLO=1
echo [14/92] Canary
curl -fsSL --retry 3 -o "%MODS%\canary-mc1.20.1-0.3.3.jar" "https://cdn.modrinth.com/data/qa2H4BS9/versions/lauzXB0n/canary-mc1.20.1-0.3.3.jar" || set FALLO=1
echo [15/92] Carry On
curl -fsSL --retry 3 -o "%MODS%\carryon-forge-1.20.1-2.1.2.7.jar" "https://cdn.modrinth.com/data/joEfVgkn/versions/edGQD16r/carryon-forge-1.20.1-2.1.2.7.jar" || set FALLO=1
echo [16/92] Chunky
curl -fsSL --retry 3 -o "%MODS%\Chunky-1.3.146.jar" "https://cdn.modrinth.com/data/fALzjamp/versions/4FTDk9wv/Chunky-1.3.146.jar" || set FALLO=1
echo [17/92] Citadel
curl -fsSL --retry 3 -o "%MODS%\citadel-2.6.3-1.20.1.jar" "https://cdn.modrinth.com/data/jJfV67b1/versions/lTAAe4sZ/citadel-2.6.3-1.20.1.jar" || set FALLO=1
echo [18/92] Cloth Config API
curl -fsSL --retry 3 -o "%MODS%\cloth-config-11.1.136-forge.jar" "https://cdn.modrinth.com/data/9s6osm5g/versions/t8TXrZvZ/cloth-config-11.1.136-forge.jar" || set FALLO=1
echo [19/92] Clumps
curl -fsSL --retry 3 -o "%MODS%\Clumps-forge-1.20.1-12.0.0.4.jar" "https://cdn.modrinth.com/data/Wnxd13zP/versions/nAHGB5ls/Clumps-forge-1.20.1-12.0.0.4.jar" || set FALLO=1
echo [20/92] Combat Roll
curl -fsSL --retry 3 -o "%MODS%\combatroll-forge-1.3.3+1.20.1.jar" "https://cdn.modrinth.com/data/wGKYL7st/versions/532t65Zz/combatroll-forge-1.3.3%%2B1.20.1.jar" || set FALLO=1
echo [21/92] Comforts
curl -fsSL --retry 3 -o "%MODS%\comforts-forge-6.4.0+1.20.1.jar" "https://cdn.modrinth.com/data/SaCpeal4/versions/gBDsc134/comforts-forge-6.4.0%%2B1.20.1.jar" || set FALLO=1
echo [22/92] Controlling
curl -fsSL --retry 3 -o "%MODS%\Controlling-forge-1.20.1-12.0.2.jar" "https://cdn.modrinth.com/data/xv94TkTM/versions/LH6Bi6Am/Controlling-forge-1.20.1-12.0.2.jar" || set FALLO=1
echo [23/92] Corpse
curl -fsSL --retry 3 -o "%MODS%\corpse-forge-1.20.1-1.0.23.jar" "https://cdn.modrinth.com/data/WrpuIfhw/versions/7fc0hJN6/corpse-forge-1.20.1-1.0.23.jar" || set FALLO=1
echo [24/92] Cristel Lib
curl -fsSL --retry 3 -o "%MODS%\cristellib-1.1.6-forge.jar" "https://cdn.modrinth.com/data/cl223EMc/versions/DOsSK4NK/cristellib-1.1.6-forge.jar" || set FALLO=1
echo [25/92] Curios API
curl -fsSL --retry 3 -o "%MODS%\curios-forge-5.14.1+1.20.1.jar" "https://cdn.modrinth.com/data/vvuO3ImH/versions/IPQlZkz1/curios-forge-5.14.1%%2B1.20.1.jar" || set FALLO=1
echo [26/92] Dragon Mounts: Legacy
curl -fsSL --retry 3 -o "%MODS%\dragonmounts-1.20.1-1.2.3-beta.jar" "https://cdn.modrinth.com/data/G3EPcczP/versions/NVLJuxL1/dragonmounts-1.20.1-1.2.3-beta.jar" || set FALLO=1
echo [27/92] Dungeons and Taverns
curl -fsSL --retry 3 -o "%MODS%\dungeons-and-taverns-3.0.3.f.jar" "https://cdn.modrinth.com/data/tpehi7ww/versions/ojHpWOrz/dungeons-and-taverns-3.0.3.f.jar" || set FALLO=1
echo [28/92] Embeddium
curl -fsSL --retry 3 -o "%MODS%\embeddium-0.3.31+mc1.20.1.jar" "https://cdn.modrinth.com/data/sk9rgfiA/versions/UTbfe5d1/embeddium-0.3.31%%2Bmc1.20.1.jar" || set FALLO=1
echo [29/92] Entity Culling
curl -fsSL --retry 3 -o "%MODS%\entityculling-forge-1.11.2-mc1.20.1.jar" "https://cdn.modrinth.com/data/NNAgCjsB/versions/HPDH6g5B/entityculling-forge-1.11.2-mc1.20.1.jar" || set FALLO=1
echo [30/92] Explorer's Compass
curl -fsSL --retry 3 -o "%MODS%\ExplorersCompass-1.20.1-1.4.0-forge.jar" "https://cdn.modrinth.com/data/RV1qfVQ8/versions/7ZdJbCOx/ExplorersCompass-1.20.1-1.4.0-forge.jar" || set FALLO=1
echo [31/92] Explorify
curl -fsSL --retry 3 -o "%MODS%\Explorify v1.6.5.mod.jar" "https://cdn.modrinth.com/data/HSfsxuTo/versions/CuBdAr31/Explorify%%20v1.6.5.mod.jar" || set FALLO=1
echo [32/92] Farmer's Delight
curl -fsSL --retry 3 -o "%MODS%\FarmersDelight-1.20.1-1.3.4.jar" "https://cdn.modrinth.com/data/R2OftAxM/versions/SiIpcZzM/FarmersDelight-1.20.1-1.3.4.jar" || set FALLO=1
echo [33/92] FerriteCore
curl -fsSL --retry 3 -o "%MODS%\ferritecore-6.0.1-forge.jar" "https://cdn.modrinth.com/data/uXXizFIs/versions/DG5Fn9Sz/ferritecore-6.0.1-forge.jar" || set FALLO=1
echo [34/92] FriendsFoes (Forge/NeoForge)
curl -fsSL --retry 3 -o "%MODS%\friendsandfoes-forge-mc1.20.1-3.0.9.jar" "https://cdn.modrinth.com/data/BOCJKD49/versions/ihFi4QrR/friendsandfoes-forge-mc1.20.1-3.0.9.jar" || set FALLO=1
echo [35/92] Fzzy Config
curl -fsSL --retry 3 -o "%MODS%\fzzy_config-0.7.7+1.20.1+forge.jar" "https://cdn.modrinth.com/data/hYykXjDp/versions/53kg5uoF/fzzy_config-0.7.7%%2B1.20.1%%2Bforge.jar" || set FALLO=1
echo [36/92] Geckolib
curl -fsSL --retry 3 -o "%MODS%\geckolib-forge-1.20.1-4.8.4.jar" "https://cdn.modrinth.com/data/8BmcQJ2H/versions/aC5KMoNg/geckolib-forge-1.20.1-4.8.4.jar" || set FALLO=1
echo [37/92] Ice and Fire
curl -fsSL --retry 3 -o "%MODS%\iceandfire-2.1.13-1.20.1-beta-5.jar" "https://cdn.modrinth.com/data/LVnvHVBp/versions/EzN8KQYF/iceandfire-2.1.13-1.20.1-beta-5.jar" || set FALLO=1
echo [38/92] Illager Invasion
curl -fsSL --retry 3 -o "%MODS%\IllagerInvasion-v8.0.7-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/jSV9w0J5/versions/h3xEIiW8/IllagerInvasion-v8.0.7-1.20.1-Forge.jar" || set FALLO=1
echo [39/92] ImmediatelyFast
curl -fsSL --retry 3 -o "%MODS%\ImmediatelyFast-Forge-1.5.5+1.20.4.jar" "https://cdn.modrinth.com/data/5ZwdcRci/versions/rvsLEEZU/ImmediatelyFast-Forge-1.5.5%%2B1.20.4.jar" || set FALLO=1
echo [40/92] Immersive Armors
curl -fsSL --retry 3 -o "%MODS%\immersive_armors-1.7.2+1.20.1-forge.jar" "https://cdn.modrinth.com/data/eE2Db4YU/versions/ZPdUJXFG/immersive_armors-1.7.2%%2B1.20.1-forge.jar" || set FALLO=1
echo [41/92] Iron's Lib
curl -fsSL --retry 3 -o "%MODS%\irons_lib-1.20.1-2.1.0.jar" "https://cdn.modrinth.com/data/9nfaJPtX/versions/DbpRfa2k/irons_lib-1.20.1-2.1.0.jar" || set FALLO=1
echo [42/92] Iron's Spells 'n Spellbooks
curl -fsSL --retry 3 -o "%MODS%\irons_spellbooks-1.20.1-3.16.3.jar" "https://cdn.modrinth.com/data/s4OWxYQQ/versions/hZaEegS9/irons_spellbooks-1.20.1-3.16.3.jar" || set FALLO=1
echo [43/92] Jade 🔍
curl -fsSL --retry 3 -o "%MODS%\Jade-1.20.1-Forge-11.13.3.jar" "https://cdn.modrinth.com/data/nvQzSEkH/versions/xJQHCmWJ/Jade-1.20.1-Forge-11.13.3.jar" || set FALLO=1
echo [44/92] Just Enough Items (JEI)
curl -fsSL --retry 3 -o "%MODS%\jei-1.20.1-forge-15.62.0.214.jar" "https://cdn.modrinth.com/data/u6dRKJwZ/versions/nEevlS4k/jei-1.20.1-forge-15.62.0.214.jar" || set FALLO=1
echo [45/92] Kotlin for Forge
curl -fsSL --retry 3 -o "%MODS%\kotlinforforge-4.12.0-all.jar" "https://cdn.modrinth.com/data/ordsPcFz/versions/Zsh14XeQ/kotlinforforge-4.12.0-all.jar" || set FALLO=1
echo [46/92] L_Ender's Cataclysm
curl -fsSL --retry 3 -o "%MODS%\L_Enders_Cataclysm-3.31.jar" "https://cdn.modrinth.com/data/46KJle7n/versions/C3H0azzB/L_Enders_Cataclysm-3.31.jar" || set FALLO=1
echo [47/92] Lionfish-API
curl -fsSL --retry 3 -o "%MODS%\lionfishapi-3.0.jar" "https://cdn.modrinth.com/data/FoVacERa/versions/CPftDBcY/lionfishapi-3.0.jar" || set FALLO=1
echo [48/92] Lithostitched
curl -fsSL --retry 3 -o "%MODS%\lithostitched-forge-1.20.1-1.4.11.jar" "https://cdn.modrinth.com/data/XaDC71GB/versions/srPoHKt8/lithostitched-forge-1.20.1-1.4.11.jar" || set FALLO=1
echo [49/92] Lootr
curl -fsSL --retry 3 -o "%MODS%\lootr-forge-1.20-0.7.35.94.jar" "https://cdn.modrinth.com/data/EltpO5cN/versions/mWTXC1ZX/lootr-forge-1.20-0.7.35.94.jar" || set FALLO=1
echo [50/92] Memory Leak Fix
curl -fsSL --retry 3 -o "%MODS%\memoryleakfix-forge-1.17+-1.1.5.jar" "https://cdn.modrinth.com/data/NRjRiSSD/versions/3w0IxNtk/memoryleakfix-forge-1.17%%2B-1.1.5.jar" || set FALLO=1
echo [51/92] MezzConfig
curl -fsSL --retry 3 -o "%MODS%\mezz_config-1.20.1-forge-0.6.3.jar" "https://cdn.modrinth.com/data/7tEfOcA7/versions/euqS2osE/mezz_config-1.20.1-forge-0.6.3.jar" || set FALLO=1
echo [52/92] ModernFix
curl -fsSL --retry 3 -o "%MODS%\modernfix-forge-5.27.83+mc1.20.1.jar" "https://cdn.modrinth.com/data/nmDcB62a/versions/jAZ7Ge3d/modernfix-forge-5.27.83%%2Bmc1.20.1.jar" || set FALLO=1
echo [53/92] Moog's Structure Lib (moogs_structures)
curl -fsSL --retry 3 -o "%MODS%\MoogsStructureLib-forge-1.20-3.3.1.jar" "https://cdn.modrinth.com/data/1oUDhxuy/versions/Xe7AFvDZ/MoogsStructureLib-forge-1.20-3.3.1.jar" || set FALLO=1
echo [54/92] MVS - Moog's Voyager Structures
curl -fsSL --retry 3 -o "%MODS%\MoogsVoyagerStructures-universal-1.20-5.1.1.jar" "https://cdn.modrinth.com/data/OQAgZMH1/versions/HZpL7DX5/MoogsVoyagerStructures-universal-1.20-5.1.1.jar" || set FALLO=1
echo [55/92] Moonlight Lib
curl -fsSL --retry 3 -o "%MODS%\moonlight-1.20-2.16.35-forge.jar" "https://cdn.modrinth.com/data/twkfQtEc/versions/W0ZWjZib/moonlight-1.20-2.16.35-forge.jar" || set FALLO=1
echo [56/92] Mouse Tweaks
curl -fsSL --retry 3 -o "%MODS%\MouseTweaks-forge-mc1.20.1-2.25.1.jar" "https://cdn.modrinth.com/data/aC3cM3Vq/versions/7JVXOe3K/MouseTweaks-forge-mc1.20.1-2.25.1.jar" || set FALLO=1
echo [57/92] Mowzie's Mobs
curl -fsSL --retry 3 -o "%MODS%\mowziesmobs-1.8.2.jar" "https://cdn.modrinth.com/data/BFbX9xcm/versions/acYEfsJa/mowziesmobs-1.8.2.jar" || set FALLO=1
echo [58/92] Mutant Monsters
curl -fsSL --retry 3 -o "%MODS%\MutantMonsters-v8.0.8-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/derP0ten/versions/CUgYzMnF/MutantMonsters-v8.0.8-1.20.1-Forge.jar" || set FALLO=1
echo [59/92] Naturalist
curl -fsSL --retry 3 -o "%MODS%\naturalist-5.0pre4+forge-1.20.1.jar" "https://cdn.modrinth.com/data/F8BQNPWX/versions/wnR21jg1/naturalist-5.0pre4%%2Bforge-1.20.1.jar" || set FALLO=1
echo [60/92] Open Parties and Claims
curl -fsSL --retry 3 -o "%MODS%\open-parties-and-claims-forge-1.20.1-0.31.6.jar" "https://cdn.modrinth.com/data/gF3BGWvG/versions/3aml2k9o/open-parties-and-claims-forge-1.20.1-0.31.6.jar" || set FALLO=1
echo [61/92] Origins (Forge)
curl -fsSL --retry 3 -o "%MODS%\origins-forge-1.20.1-1.10.0.9-all.jar" "https://cdn.modrinth.com/data/jl3m2lR9/versions/vynFXywM/origins-forge-1.20.1-1.10.0.9-all.jar" || set FALLO=1
echo [62/92] Patchouli
curl -fsSL --retry 3 -o "%MODS%\Patchouli-1.20.1-85-FORGE.jar" "https://cdn.modrinth.com/data/nU0bVIaL/versions/94dtOLgZ/Patchouli-1.20.1-85-FORGE.jar" || set FALLO=1
echo [63/92] Placebo
curl -fsSL --retry 3 -o "%MODS%\Placebo-1.20.1-8.6.3.jar" "https://cdn.modrinth.com/data/tCkE8p2N/versions/6SkuAGoz/Placebo-1.20.1-8.6.3.jar" || set FALLO=1
echo [64/92] playerAnimator
curl -fsSL --retry 3 -o "%MODS%\player-animation-lib-forge-1.0.2-rc1+1.20.jar" "https://cdn.modrinth.com/data/gedNE4y2/versions/xe2EVE6q/player-animation-lib-forge-1.0.2-rc1%%2B1.20.jar" || set FALLO=1
echo [65/92] Puzzles Lib
curl -fsSL --retry 3 -o "%MODS%\PuzzlesLib-v8.1.33-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/QAGBst4M/versions/mIyVGf3d/PuzzlesLib-v8.1.33-1.20.1-Forge.jar" || set FALLO=1
echo [66/92] Repurposed Structures - Neoforge/Forge
curl -fsSL --retry 3 -o "%MODS%\repurposed_structures-7.1.25+1.20.1-forge.jar" "https://cdn.modrinth.com/data/QDNS5oAT/versions/GgUh2Zx7/repurposed_structures-7.1.25%%2B1.20.1-forge.jar" || set FALLO=1
echo [67/92] Searchables
curl -fsSL --retry 3 -o "%MODS%\Searchables-forge-1.20.1-1.0.3.jar" "https://cdn.modrinth.com/data/fuuu3xnx/versions/PM9yAW1G/Searchables-forge-1.20.1-1.0.3.jar" || set FALLO=1
echo [68/92] Simple Voice Chat
curl -fsSL --retry 3 -o "%MODS%\voicechat-forge-1.20.1-2.6.24.jar" "https://cdn.modrinth.com/data/9eGKb6K1/versions/lWvbAZ3P/voicechat-forge-1.20.1-2.6.24.jar" || set FALLO=1
echo [69/92] Simply Swords
curl -fsSL --retry 3 -o "%MODS%\simplyswords-forge-neoforge-1.70.2-1.20.1.jar" "https://cdn.modrinth.com/data/bK3Ubu9p/versions/Na6e94J1/simplyswords-forge-neoforge-1.70.2-1.20.1.jar" || set FALLO=1
echo [70/92] Simply Tooltips
curl -fsSL --retry 3 -o "%MODS%\SimplyTooltips-forge-0.1.5-1.20.1.jar" "https://cdn.modrinth.com/data/6avVoBVB/versions/s87jNabF/SimplyTooltips-forge-0.1.5-1.20.1.jar" || set FALLO=1
echo [71/92] Sophisticated Backpacks
curl -fsSL --retry 3 -o "%MODS%\sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" "https://cdn.modrinth.com/data/TyCTlI4b/versions/XxOZuQnU/sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" || set FALLO=1
echo [72/92] Sophisticated Core
curl -fsSL --retry 3 -o "%MODS%\sophisticatedcore-1.20.1-1.5.1.2335.jar" "https://cdn.modrinth.com/data/nmoqTijg/versions/1Xl7lP0L/sophisticatedcore-1.20.1-1.5.1.2335.jar" || set FALLO=1
echo [73/92] spark
curl -fsSL --retry 3 -o "%MODS%\spark-1.10.53-forge.jar" "https://cdn.modrinth.com/data/l6YH9Als/versions/4FXHDE9F/spark-1.10.53-forge.jar" || set FALLO=1
echo [74/92] Structory
curl -fsSL --retry 3 -o "%MODS%\Structory_1.20.x_v1.3.5.jar" "https://cdn.modrinth.com/data/aKCwCJlY/versions/FkaSuQb0/Structory_1.20.x_v1.3.5.jar" || set FALLO=1
echo [75/92] Supplementaries
curl -fsSL --retry 3 -o "%MODS%\supplementaries-1.20-3.1.43-forge.jar" "https://cdn.modrinth.com/data/fFEIiSDQ/versions/S0TIJ1hU/supplementaries-1.20-3.1.43-forge.jar" || set FALLO=1
echo [76/92] Tectonic
curl -fsSL --retry 3 -o "%MODS%\tectonic-3.0.17-forge-1.20.1.jar" "https://cdn.modrinth.com/data/lWDHr9jE/versions/KLmvRxwh/tectonic-3.0.17-forge-1.20.1.jar" || set FALLO=1
echo [77/92] Terralith
curl -fsSL --retry 3 -o "%MODS%\Terralith_1.20.x_v2.5.4.jar" "https://cdn.modrinth.com/data/8oi3bsk5/versions/WeYhEb5d/Terralith_1.20.x_v2.5.4.jar" || set FALLO=1
echo [78/92] Towns and Towers
curl -fsSL --retry 3 -o "%MODS%\Towns-and-Towers-1.12-Fabric+Forge.jar" "https://cdn.modrinth.com/data/DjLobEOy/versions/7ZwnSrVW/Towns-and-Towers-1.12-Fabric%%2BForge.jar" || set FALLO=1
echo [79/92] Traveler's Backpack
curl -fsSL --retry 3 -o "%MODS%\travelersbackpack-forge-1.20.1-9.1.57.jar" "https://cdn.modrinth.com/data/rlloIFEV/versions/wuJ2J0SL/travelersbackpack-forge-1.20.1-9.1.57.jar" || set FALLO=1
echo [80/92] Waystones
curl -fsSL --retry 3 -o "%MODS%\waystones-forge-1.20.1-14.1.21.jar" "https://cdn.modrinth.com/data/LOpKHB2A/versions/Y0IgdaoP/waystones-forge-1.20.1-14.1.21.jar" || set FALLO=1
echo [81/92] When Dungeons Arise
curl -fsSL --retry 3 -o "%MODS%\DungeonsArise-1.20.x-2.1.58-release.jar" "https://cdn.modrinth.com/data/8DfbfASn/versions/6hQpx5Tc/DungeonsArise-1.20.x-2.1.58-release.jar" || set FALLO=1
echo [82/92] Xaero's Minimap
curl -fsSL --retry 3 -o "%MODS%\xaerominimap-forge-1.20.1-26.5.0.jar" "https://cdn.modrinth.com/data/1bokaNcj/versions/Juh6inLY/xaerominimap-forge-1.20.1-26.5.0.jar" || set FALLO=1
echo [83/92] Xaero's World Map
curl -fsSL --retry 3 -o "%MODS%\xaeroworldmap-forge-1.20.1-1.46.0.jar" "https://cdn.modrinth.com/data/NcUtCpym/versions/rlPmwaQX/xaeroworldmap-forge-1.20.1-1.46.0.jar" || set FALLO=1
echo [84/92] YUNG's API
curl -fsSL --retry 3 -o "%MODS%\YungsApi-1.20-Forge-4.0.6.jar" "https://cdn.modrinth.com/data/Ua7DFN59/versions/PJOYAmAs/YungsApi-1.20-Forge-4.0.6.jar" || set FALLO=1
echo [85/92] YUNG's Better Desert Temples
curl -fsSL --retry 3 -o "%MODS%\YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" "https://cdn.modrinth.com/data/XNlO7sBv/versions/lRK2ZA9U/YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" || set FALLO=1
echo [86/92] YUNG's Better Dungeons
curl -fsSL --retry 3 -o "%MODS%\YungsBetterDungeons-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/o1C1Dkj5/versions/kPiQ6v4q/YungsBetterDungeons-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [87/92] YUNG's Better Mineshafts
curl -fsSL --retry 3 -o "%MODS%\YungsBetterMineshafts-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/HjmxVlSr/versions/kVO57zxB/YungsBetterMineshafts-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [88/92] YUNG's Better Nether Fortresses
curl -fsSL --retry 3 -o "%MODS%\YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" "https://cdn.modrinth.com/data/Z2mXHnxP/versions/2nUEz0zq/YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" || set FALLO=1
echo [89/92] YUNG's Better Ocean Monuments
curl -fsSL --retry 3 -o "%MODS%\YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" "https://cdn.modrinth.com/data/3dT9sgt4/versions/SN4iZ7wf/YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" || set FALLO=1
echo [90/92] YUNG's Better Strongholds
curl -fsSL --retry 3 -o "%MODS%\YungsBetterStrongholds-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/kidLKymU/versions/rwiShgsc/YungsBetterStrongholds-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [91/92] YUNG's Bridges
curl -fsSL --retry 3 -o "%MODS%\YungsBridges-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/Ht4BfYp6/versions/KgO1gfM2/YungsBridges-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [92/92] YUNG's Extras
curl -fsSL --retry 3 -o "%MODS%\YungsExtras-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/ZYgyPyfq/versions/h4m8J7w8/YungsExtras-1.20-Forge-4.0.3.jar" || set FALLO=1
echo.
if "%FALLO%"=="1" (echo ALGUNOS MODS FALLARON. Revisa tu internet y vuelve a ejecutar este archivo. & pause & exit /b 1)
echo ==========================================================
echo   LISTO. Ahora en TLauncher:
echo   1. Elige la version  Forge 1.20.1
echo   2. Ajustes (engranaje) - Memoria: 6144 MB (5120 si tu PC tiene 8 GB)
echo   3. Entrar - Multijugador - agrega la IP del servidor
echo   4. La primera vez escribe en el chat:  /register TuClave TuClave
echo      Las siguientes veces:               /login TuClave
echo ==========================================================
pause
