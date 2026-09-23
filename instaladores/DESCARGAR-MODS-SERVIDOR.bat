@echo off
chcp 65001 >nul
title Reinos de Aventura 1.1.0 - archivos del servidor
echo Descarga los mods del SERVIDOR en la carpeta "subir-al-hosting" (junto a este archivo).
echo Luego sube su contenido al hosting con FileZilla (SFTP).
pause
cd /d "%~dp0"
set "OUT=%~dp0subir-al-hosting"
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%\mods" "%OUT%\config"
set FALLO=0
echo Descargando 88 mods (unos 300 MB)...
echo [1/88] AI Improvements: Performance Tuning
curl -fsSL --retry 3 -o "%OUT%\mods\AI-Improvements-1.20-0.5.2.jar" "https://cdn.modrinth.com/data/DSVgwcji/versions/eJihmpNQ/AI-Improvements-1.20-0.5.2.jar" || set FALLO=1
echo [2/88] Alex's Mobs
curl -fsSL --retry 3 -o "%OUT%\mods\alexsmobs-1.22.9.jar" "https://cdn.modrinth.com/data/2cMuAZAp/versions/XoIASRVU/alexsmobs-1.22.9.jar" || set FALLO=1
echo [3/88] Apotheosis
curl -fsSL --retry 3 -o "%OUT%\mods\Apotheosis-1.20.1-7.4.8.jar" "https://cdn.modrinth.com/data/rqFWfVlz/versions/tT3CLYvK/Apotheosis-1.20.1-7.4.8.jar" || set FALLO=1
echo [4/88] Apothic Attributes
curl -fsSL --retry 3 -o "%OUT%\mods\ApothicAttributes-1.20.1-1.3.7.jar" "https://cdn.modrinth.com/data/DGaH8Rh0/versions/fwL9CWGd/ApothicAttributes-1.20.1-1.3.7.jar" || set FALLO=1
echo [5/88] AppleSkin
curl -fsSL --retry 3 -o "%OUT%\mods\appleskin-forge-mc1.20.1-2.5.1.jar" "https://cdn.modrinth.com/data/EsAfCjCV/versions/XdXDExVF/appleskin-forge-mc1.20.1-2.5.1.jar" || set FALLO=1
echo [6/88] Aquaculture 2
curl -fsSL --retry 3 -o "%OUT%\mods\Aquaculture-1.20.1-2.5.7.jar" "https://cdn.modrinth.com/data/Vl1uNAuy/versions/wNiFoROs/Aquaculture-1.20.1-2.5.7.jar" || set FALLO=1
echo [7/88] Architectury API
curl -fsSL --retry 3 -o "%OUT%\mods\architectury-9.2.14-forge.jar" "https://cdn.modrinth.com/data/lhGA9TYQ/versions/1MKTLiiG/architectury-9.2.14-forge.jar" || set FALLO=1
echo [8/88] Artifacts
curl -fsSL --retry 3 -o "%OUT%\mods\artifacts-forge-9.5.19.jar" "https://cdn.modrinth.com/data/P0Mu4wcQ/versions/lrLPBSzq/artifacts-forge-9.5.19.jar" || set FALLO=1
echo [9/88] AttributeFix
curl -fsSL --retry 3 -o "%OUT%\mods\AttributeFix-Forge-1.20.1-21.0.5.jar" "https://cdn.modrinth.com/data/lOOpEntO/versions/ihWybkI9/AttributeFix-Forge-1.20.1-21.0.5.jar" || set FALLO=1
echo [10/88] Auth
curl -fsSL --retry 3 -o "%OUT%\mods\auth-1.0.0.jar" "https://cdn.modrinth.com/data/RpXNx59A/versions/dJqoN5vT/auth-1.0.0.jar" || set FALLO=1
echo [11/88] Balm
curl -fsSL --retry 3 -o "%OUT%\mods\balm-forge-1.20.1-7.3.43.jar" "https://cdn.modrinth.com/data/MBAkmtvl/versions/1VlYVa3k/balm-forge-1.20.1-7.3.43.jar" || set FALLO=1
echo [12/88] Better Combat
curl -fsSL --retry 3 -o "%OUT%\mods\bettercombat-forge-1.9.0+1.20.1.jar" "https://cdn.modrinth.com/data/5sy6g3kz/versions/rnhiaw3t/bettercombat-forge-1.9.0%%2B1.20.1.jar" || set FALLO=1
echo [13/88] Bountiful
curl -fsSL --retry 3 -o "%OUT%\mods\Bountiful-6.0.4+1.20.1-forge.jar" "https://cdn.modrinth.com/data/BpwWFOVM/versions/EM7Su3PD/Bountiful-6.0.4%%2B1.20.1-forge.jar" || set FALLO=1
echo [14/88] Caelus API
curl -fsSL --retry 3 -o "%OUT%\mods\caelus-forge-3.2.0+1.20.1.jar" "https://cdn.modrinth.com/data/40FYwb4z/versions/mRry0DgY/caelus-forge-3.2.0%%2B1.20.1.jar" || set FALLO=1
echo [15/88] Canary
curl -fsSL --retry 3 -o "%OUT%\mods\canary-mc1.20.1-0.3.3.jar" "https://cdn.modrinth.com/data/qa2H4BS9/versions/lauzXB0n/canary-mc1.20.1-0.3.3.jar" || set FALLO=1
echo [16/88] Carry On
curl -fsSL --retry 3 -o "%OUT%\mods\carryon-forge-1.20.1-2.1.2.7.jar" "https://cdn.modrinth.com/data/joEfVgkn/versions/edGQD16r/carryon-forge-1.20.1-2.1.2.7.jar" || set FALLO=1
echo [17/88] Chunky
curl -fsSL --retry 3 -o "%OUT%\mods\Chunky-1.3.146.jar" "https://cdn.modrinth.com/data/fALzjamp/versions/4FTDk9wv/Chunky-1.3.146.jar" || set FALLO=1
echo [18/88] Citadel
curl -fsSL --retry 3 -o "%OUT%\mods\citadel-2.6.3-1.20.1.jar" "https://cdn.modrinth.com/data/jJfV67b1/versions/lTAAe4sZ/citadel-2.6.3-1.20.1.jar" || set FALLO=1
echo [19/88] Cloth Config API
curl -fsSL --retry 3 -o "%OUT%\mods\cloth-config-11.1.136-forge.jar" "https://cdn.modrinth.com/data/9s6osm5g/versions/t8TXrZvZ/cloth-config-11.1.136-forge.jar" || set FALLO=1
echo [20/88] Clumps
curl -fsSL --retry 3 -o "%OUT%\mods\Clumps-forge-1.20.1-12.0.0.4.jar" "https://cdn.modrinth.com/data/Wnxd13zP/versions/nAHGB5ls/Clumps-forge-1.20.1-12.0.0.4.jar" || set FALLO=1
echo [21/88] Combat Roll
curl -fsSL --retry 3 -o "%OUT%\mods\combatroll-forge-1.3.3+1.20.1.jar" "https://cdn.modrinth.com/data/wGKYL7st/versions/532t65Zz/combatroll-forge-1.3.3%%2B1.20.1.jar" || set FALLO=1
echo [22/88] Comforts
curl -fsSL --retry 3 -o "%OUT%\mods\comforts-forge-6.4.0+1.20.1.jar" "https://cdn.modrinth.com/data/SaCpeal4/versions/gBDsc134/comforts-forge-6.4.0%%2B1.20.1.jar" || set FALLO=1
echo [23/88] Corpse
curl -fsSL --retry 3 -o "%OUT%\mods\corpse-forge-1.20.1-1.0.23.jar" "https://cdn.modrinth.com/data/WrpuIfhw/versions/7fc0hJN6/corpse-forge-1.20.1-1.0.23.jar" || set FALLO=1
echo [24/88] Cristel Lib
curl -fsSL --retry 3 -o "%OUT%\mods\cristellib-1.1.6-forge.jar" "https://cdn.modrinth.com/data/cl223EMc/versions/DOsSK4NK/cristellib-1.1.6-forge.jar" || set FALLO=1
echo [25/88] Curios API
curl -fsSL --retry 3 -o "%OUT%\mods\curios-forge-5.14.1+1.20.1.jar" "https://cdn.modrinth.com/data/vvuO3ImH/versions/IPQlZkz1/curios-forge-5.14.1%%2B1.20.1.jar" || set FALLO=1
echo [26/88] Dragon Mounts: Legacy
curl -fsSL --retry 3 -o "%OUT%\mods\dragonmounts-1.20.1-1.2.3-beta.jar" "https://cdn.modrinth.com/data/G3EPcczP/versions/NVLJuxL1/dragonmounts-1.20.1-1.2.3-beta.jar" || set FALLO=1
echo [27/88] Dungeons and Taverns
curl -fsSL --retry 3 -o "%OUT%\mods\dungeons-and-taverns-3.0.3.f.jar" "https://cdn.modrinth.com/data/tpehi7ww/versions/ojHpWOrz/dungeons-and-taverns-3.0.3.f.jar" || set FALLO=1
echo [28/88] Explorer's Compass
curl -fsSL --retry 3 -o "%OUT%\mods\ExplorersCompass-1.20.1-1.4.0-forge.jar" "https://cdn.modrinth.com/data/RV1qfVQ8/versions/7ZdJbCOx/ExplorersCompass-1.20.1-1.4.0-forge.jar" || set FALLO=1
echo [29/88] Explorify
curl -fsSL --retry 3 -o "%OUT%\mods\Explorify v1.6.5.mod.jar" "https://cdn.modrinth.com/data/HSfsxuTo/versions/CuBdAr31/Explorify%%20v1.6.5.mod.jar" || set FALLO=1
echo [30/88] Farmer's Delight
curl -fsSL --retry 3 -o "%OUT%\mods\FarmersDelight-1.20.1-1.3.4.jar" "https://cdn.modrinth.com/data/R2OftAxM/versions/SiIpcZzM/FarmersDelight-1.20.1-1.3.4.jar" || set FALLO=1
echo [31/88] FerriteCore
curl -fsSL --retry 3 -o "%OUT%\mods\ferritecore-6.0.1-forge.jar" "https://cdn.modrinth.com/data/uXXizFIs/versions/DG5Fn9Sz/ferritecore-6.0.1-forge.jar" || set FALLO=1
echo [32/88] FriendsFoes (Forge/NeoForge)
curl -fsSL --retry 3 -o "%OUT%\mods\friendsandfoes-forge-mc1.20.1-3.0.9.jar" "https://cdn.modrinth.com/data/BOCJKD49/versions/ihFi4QrR/friendsandfoes-forge-mc1.20.1-3.0.9.jar" || set FALLO=1
echo [33/88] Fzzy Config
curl -fsSL --retry 3 -o "%OUT%\mods\fzzy_config-0.7.7+1.20.1+forge.jar" "https://cdn.modrinth.com/data/hYykXjDp/versions/53kg5uoF/fzzy_config-0.7.7%%2B1.20.1%%2Bforge.jar" || set FALLO=1
echo [34/88] Geckolib
curl -fsSL --retry 3 -o "%OUT%\mods\geckolib-forge-1.20.1-4.8.4.jar" "https://cdn.modrinth.com/data/8BmcQJ2H/versions/aC5KMoNg/geckolib-forge-1.20.1-4.8.4.jar" || set FALLO=1
echo [35/88] Ice and Fire
curl -fsSL --retry 3 -o "%OUT%\mods\iceandfire-2.1.13-1.20.1-beta-5.jar" "https://cdn.modrinth.com/data/LVnvHVBp/versions/EzN8KQYF/iceandfire-2.1.13-1.20.1-beta-5.jar" || set FALLO=1
echo [36/88] Illager Invasion
curl -fsSL --retry 3 -o "%OUT%\mods\IllagerInvasion-v8.0.7-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/jSV9w0J5/versions/h3xEIiW8/IllagerInvasion-v8.0.7-1.20.1-Forge.jar" || set FALLO=1
echo [37/88] Immersive Armors
curl -fsSL --retry 3 -o "%OUT%\mods\immersive_armors-1.7.2+1.20.1-forge.jar" "https://cdn.modrinth.com/data/eE2Db4YU/versions/ZPdUJXFG/immersive_armors-1.7.2%%2B1.20.1-forge.jar" || set FALLO=1
echo [38/88] Iron's Lib
curl -fsSL --retry 3 -o "%OUT%\mods\irons_lib-1.20.1-2.1.0.jar" "https://cdn.modrinth.com/data/9nfaJPtX/versions/DbpRfa2k/irons_lib-1.20.1-2.1.0.jar" || set FALLO=1
echo [39/88] Iron's Spells 'n Spellbooks
curl -fsSL --retry 3 -o "%OUT%\mods\irons_spellbooks-1.20.1-3.16.3.jar" "https://cdn.modrinth.com/data/s4OWxYQQ/versions/hZaEegS9/irons_spellbooks-1.20.1-3.16.3.jar" || set FALLO=1
echo [40/88] Jade 🔍
curl -fsSL --retry 3 -o "%OUT%\mods\Jade-1.20.1-Forge-11.13.3.jar" "https://cdn.modrinth.com/data/nvQzSEkH/versions/xJQHCmWJ/Jade-1.20.1-Forge-11.13.3.jar" || set FALLO=1
echo [41/88] Just Enough Items (JEI)
curl -fsSL --retry 3 -o "%OUT%\mods\jei-1.20.1-forge-15.62.0.214.jar" "https://cdn.modrinth.com/data/u6dRKJwZ/versions/nEevlS4k/jei-1.20.1-forge-15.62.0.214.jar" || set FALLO=1
echo [42/88] Kambrik
curl -fsSL --retry 3 -o "%OUT%\mods\Kambrik-6.1.1+1.20.1-forge.jar" "https://cdn.modrinth.com/data/zfbCkvdZ/versions/er56DwLJ/Kambrik-6.1.1%%2B1.20.1-forge.jar" || set FALLO=1
echo [43/88] Kotlin for Forge
curl -fsSL --retry 3 -o "%OUT%\mods\kotlinforforge-4.12.0-all.jar" "https://cdn.modrinth.com/data/ordsPcFz/versions/Zsh14XeQ/kotlinforforge-4.12.0-all.jar" || set FALLO=1
echo [44/88] L_Ender's Cataclysm
curl -fsSL --retry 3 -o "%OUT%\mods\L_Enders_Cataclysm-3.31.jar" "https://cdn.modrinth.com/data/46KJle7n/versions/C3H0azzB/L_Enders_Cataclysm-3.31.jar" || set FALLO=1
echo [45/88] Lightman's Currency
curl -fsSL --retry 3 -o "%OUT%\mods\lightmanscurrency-1.20.1-2.3.0.5.jar" "https://cdn.modrinth.com/data/wvMc8AJt/versions/eAALa47O/lightmanscurrency-1.20.1-2.3.0.5.jar" || set FALLO=1
echo [46/88] Lionfish-API
curl -fsSL --retry 3 -o "%OUT%\mods\lionfishapi-3.0.jar" "https://cdn.modrinth.com/data/FoVacERa/versions/CPftDBcY/lionfishapi-3.0.jar" || set FALLO=1
echo [47/88] Lithostitched
curl -fsSL --retry 3 -o "%OUT%\mods\lithostitched-forge-1.20.1-1.4.11.jar" "https://cdn.modrinth.com/data/XaDC71GB/versions/srPoHKt8/lithostitched-forge-1.20.1-1.4.11.jar" || set FALLO=1
echo [48/88] Lootr
curl -fsSL --retry 3 -o "%OUT%\mods\lootr-forge-1.20-0.7.35.94.jar" "https://cdn.modrinth.com/data/EltpO5cN/versions/mWTXC1ZX/lootr-forge-1.20-0.7.35.94.jar" || set FALLO=1
echo [49/88] Memory Leak Fix
curl -fsSL --retry 3 -o "%OUT%\mods\memoryleakfix-forge-1.17+-1.1.5.jar" "https://cdn.modrinth.com/data/NRjRiSSD/versions/3w0IxNtk/memoryleakfix-forge-1.17%%2B-1.1.5.jar" || set FALLO=1
echo [50/88] MezzConfig
curl -fsSL --retry 3 -o "%OUT%\mods\mezz_config-1.20.1-forge-0.6.3.jar" "https://cdn.modrinth.com/data/7tEfOcA7/versions/euqS2osE/mezz_config-1.20.1-forge-0.6.3.jar" || set FALLO=1
echo [51/88] ModernFix
curl -fsSL --retry 3 -o "%OUT%\mods\modernfix-forge-5.27.83+mc1.20.1.jar" "https://cdn.modrinth.com/data/nmDcB62a/versions/jAZ7Ge3d/modernfix-forge-5.27.83%%2Bmc1.20.1.jar" || set FALLO=1
echo [52/88] Moog's Structure Lib (moogs_structures)
curl -fsSL --retry 3 -o "%OUT%\mods\MoogsStructureLib-forge-1.20-3.3.1.jar" "https://cdn.modrinth.com/data/1oUDhxuy/versions/Xe7AFvDZ/MoogsStructureLib-forge-1.20-3.3.1.jar" || set FALLO=1
echo [53/88] MVS - Moog's Voyager Structures
curl -fsSL --retry 3 -o "%OUT%\mods\MoogsVoyagerStructures-universal-1.20-5.1.1.jar" "https://cdn.modrinth.com/data/OQAgZMH1/versions/HZpL7DX5/MoogsVoyagerStructures-universal-1.20-5.1.1.jar" || set FALLO=1
echo [54/88] Moonlight Lib
curl -fsSL --retry 3 -o "%OUT%\mods\moonlight-1.20-2.16.35-forge.jar" "https://cdn.modrinth.com/data/twkfQtEc/versions/W0ZWjZib/moonlight-1.20-2.16.35-forge.jar" || set FALLO=1
echo [55/88] Mowzie's Mobs
curl -fsSL --retry 3 -o "%OUT%\mods\mowziesmobs-1.8.2.jar" "https://cdn.modrinth.com/data/BFbX9xcm/versions/acYEfsJa/mowziesmobs-1.8.2.jar" || set FALLO=1
echo [56/88] Mutant Monsters
curl -fsSL --retry 3 -o "%OUT%\mods\MutantMonsters-v8.0.8-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/derP0ten/versions/CUgYzMnF/MutantMonsters-v8.0.8-1.20.1-Forge.jar" || set FALLO=1
echo [57/88] Naturalist
curl -fsSL --retry 3 -o "%OUT%\mods\naturalist-5.0pre4+forge-1.20.1.jar" "https://cdn.modrinth.com/data/F8BQNPWX/versions/wnR21jg1/naturalist-5.0pre4%%2Bforge-1.20.1.jar" || set FALLO=1
echo [58/88] Open Parties and Claims
curl -fsSL --retry 3 -o "%OUT%\mods\open-parties-and-claims-forge-1.20.1-0.31.6.jar" "https://cdn.modrinth.com/data/gF3BGWvG/versions/3aml2k9o/open-parties-and-claims-forge-1.20.1-0.31.6.jar" || set FALLO=1
echo [59/88] Origins (Forge)
curl -fsSL --retry 3 -o "%OUT%\mods\origins-forge-1.20.1-1.10.0.9-all.jar" "https://cdn.modrinth.com/data/jl3m2lR9/versions/vynFXywM/origins-forge-1.20.1-1.10.0.9-all.jar" || set FALLO=1
echo [60/88] Patchouli
curl -fsSL --retry 3 -o "%OUT%\mods\Patchouli-1.20.1-85-FORGE.jar" "https://cdn.modrinth.com/data/nU0bVIaL/versions/94dtOLgZ/Patchouli-1.20.1-85-FORGE.jar" || set FALLO=1
echo [61/88] Placebo
curl -fsSL --retry 3 -o "%OUT%\mods\Placebo-1.20.1-8.6.3.jar" "https://cdn.modrinth.com/data/tCkE8p2N/versions/6SkuAGoz/Placebo-1.20.1-8.6.3.jar" || set FALLO=1
echo [62/88] playerAnimator
curl -fsSL --retry 3 -o "%OUT%\mods\player-animation-lib-forge-1.0.2-rc1+1.20.jar" "https://cdn.modrinth.com/data/gedNE4y2/versions/xe2EVE6q/player-animation-lib-forge-1.0.2-rc1%%2B1.20.jar" || set FALLO=1
echo [63/88] Puzzles Lib
curl -fsSL --retry 3 -o "%OUT%\mods\PuzzlesLib-v8.1.33-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/QAGBst4M/versions/mIyVGf3d/PuzzlesLib-v8.1.33-1.20.1-Forge.jar" || set FALLO=1
echo [64/88] Repurposed Structures - Neoforge/Forge
curl -fsSL --retry 3 -o "%OUT%\mods\repurposed_structures-7.1.25+1.20.1-forge.jar" "https://cdn.modrinth.com/data/QDNS5oAT/versions/GgUh2Zx7/repurposed_structures-7.1.25%%2B1.20.1-forge.jar" || set FALLO=1
echo [65/88] Simple Voice Chat
curl -fsSL --retry 3 -o "%OUT%\mods\voicechat-forge-1.20.1-2.6.24.jar" "https://cdn.modrinth.com/data/9eGKb6K1/versions/lWvbAZ3P/voicechat-forge-1.20.1-2.6.24.jar" || set FALLO=1
echo [66/88] Simply Swords
curl -fsSL --retry 3 -o "%OUT%\mods\simplyswords-forge-neoforge-1.70.2-1.20.1.jar" "https://cdn.modrinth.com/data/bK3Ubu9p/versions/Na6e94J1/simplyswords-forge-neoforge-1.70.2-1.20.1.jar" || set FALLO=1
echo [67/88] Sophisticated Backpacks
curl -fsSL --retry 3 -o "%OUT%\mods\sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" "https://cdn.modrinth.com/data/TyCTlI4b/versions/XxOZuQnU/sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" || set FALLO=1
echo [68/88] Sophisticated Core
curl -fsSL --retry 3 -o "%OUT%\mods\sophisticatedcore-1.20.1-1.5.1.2335.jar" "https://cdn.modrinth.com/data/nmoqTijg/versions/1Xl7lP0L/sophisticatedcore-1.20.1-1.5.1.2335.jar" || set FALLO=1
echo [69/88] spark
curl -fsSL --retry 3 -o "%OUT%\mods\spark-1.10.53-forge.jar" "https://cdn.modrinth.com/data/l6YH9Als/versions/4FXHDE9F/spark-1.10.53-forge.jar" || set FALLO=1
echo [70/88] Structory
curl -fsSL --retry 3 -o "%OUT%\mods\Structory_1.20.x_v1.3.5.jar" "https://cdn.modrinth.com/data/aKCwCJlY/versions/FkaSuQb0/Structory_1.20.x_v1.3.5.jar" || set FALLO=1
echo [71/88] Supplementaries
curl -fsSL --retry 3 -o "%OUT%\mods\supplementaries-1.20-3.1.43-forge.jar" "https://cdn.modrinth.com/data/fFEIiSDQ/versions/S0TIJ1hU/supplementaries-1.20-3.1.43-forge.jar" || set FALLO=1
echo [72/88] Tectonic
curl -fsSL --retry 3 -o "%OUT%\mods\tectonic-3.0.17-forge-1.20.1.jar" "https://cdn.modrinth.com/data/lWDHr9jE/versions/KLmvRxwh/tectonic-3.0.17-forge-1.20.1.jar" || set FALLO=1
echo [73/88] Terralith
curl -fsSL --retry 3 -o "%OUT%\mods\Terralith_1.20.x_v2.5.4.jar" "https://cdn.modrinth.com/data/8oi3bsk5/versions/WeYhEb5d/Terralith_1.20.x_v2.5.4.jar" || set FALLO=1
echo [74/88] Towns and Towers
curl -fsSL --retry 3 -o "%OUT%\mods\Towns-and-Towers-1.12-Fabric+Forge.jar" "https://cdn.modrinth.com/data/DjLobEOy/versions/7ZwnSrVW/Towns-and-Towers-1.12-Fabric%%2BForge.jar" || set FALLO=1
echo [75/88] Traveler's Backpack
curl -fsSL --retry 3 -o "%OUT%\mods\travelersbackpack-forge-1.20.1-9.1.57.jar" "https://cdn.modrinth.com/data/rlloIFEV/versions/wuJ2J0SL/travelersbackpack-forge-1.20.1-9.1.57.jar" || set FALLO=1
echo [76/88] Waystones
curl -fsSL --retry 3 -o "%OUT%\mods\waystones-forge-1.20.1-14.1.21.jar" "https://cdn.modrinth.com/data/LOpKHB2A/versions/Y0IgdaoP/waystones-forge-1.20.1-14.1.21.jar" || set FALLO=1
echo [77/88] When Dungeons Arise
curl -fsSL --retry 3 -o "%OUT%\mods\DungeonsArise-1.20.x-2.1.58-release.jar" "https://cdn.modrinth.com/data/8DfbfASn/versions/6hQpx5Tc/DungeonsArise-1.20.x-2.1.58-release.jar" || set FALLO=1
echo [78/88] Xaero's Minimap
curl -fsSL --retry 3 -o "%OUT%\mods\xaerominimap-forge-1.20.1-26.5.0.jar" "https://cdn.modrinth.com/data/1bokaNcj/versions/Juh6inLY/xaerominimap-forge-1.20.1-26.5.0.jar" || set FALLO=1
echo [79/88] Xaero's World Map
curl -fsSL --retry 3 -o "%OUT%\mods\xaeroworldmap-forge-1.20.1-1.46.0.jar" "https://cdn.modrinth.com/data/NcUtCpym/versions/rlPmwaQX/xaeroworldmap-forge-1.20.1-1.46.0.jar" || set FALLO=1
echo [80/88] YUNG's API
curl -fsSL --retry 3 -o "%OUT%\mods\YungsApi-1.20-Forge-4.0.6.jar" "https://cdn.modrinth.com/data/Ua7DFN59/versions/PJOYAmAs/YungsApi-1.20-Forge-4.0.6.jar" || set FALLO=1
echo [81/88] YUNG's Better Desert Temples
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" "https://cdn.modrinth.com/data/XNlO7sBv/versions/lRK2ZA9U/YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" || set FALLO=1
echo [82/88] YUNG's Better Dungeons
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterDungeons-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/o1C1Dkj5/versions/kPiQ6v4q/YungsBetterDungeons-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [83/88] YUNG's Better Mineshafts
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterMineshafts-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/HjmxVlSr/versions/kVO57zxB/YungsBetterMineshafts-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [84/88] YUNG's Better Nether Fortresses
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" "https://cdn.modrinth.com/data/Z2mXHnxP/versions/2nUEz0zq/YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" || set FALLO=1
echo [85/88] YUNG's Better Ocean Monuments
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" "https://cdn.modrinth.com/data/3dT9sgt4/versions/SN4iZ7wf/YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" || set FALLO=1
echo [86/88] YUNG's Better Strongholds
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterStrongholds-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/kidLKymU/versions/rwiShgsc/YungsBetterStrongholds-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [87/88] YUNG's Bridges
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBridges-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/Ht4BfYp6/versions/KgO1gfM2/YungsBridges-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [88/88] YUNG's Extras
curl -fsSL --retry 3 -o "%OUT%\mods\YungsExtras-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/ZYgyPyfq/versions/h4m8J7w8/YungsExtras-1.20-Forge-4.0.3.jar" || set FALLO=1
>>"%OUT%\config\iceandfire-common.toml" echo([Dragons]
>>"%OUT%\config\iceandfire-common.toml" echo(	[Dragons.Griefing]
>>"%OUT%\config\iceandfire-common.toml" echo(		"Dragon Griefing" = 1
>>"%OUT%\config\iceandfire-common.toml" echo(		"Tamed Dragon Griefing" = false
>>"%OUT%\server.properties" echo(# ==== Reinos de Aventura - server.properties recomendado (6-10 jugadores) ====
>>"%OUT%\server.properties" echo(motd=§6§lReinos de Aventura §r§7- dragones, mazmorras y magia
>>"%OUT%\server.properties" echo(max-players=10
>>"%OUT%\server.properties" echo(difficulty=normal
>>"%OUT%\server.properties" echo(gamemode=survival
>>"%OUT%\server.properties" echo(pvp=true
>>"%OUT%\server.properties" echo(# false = permite TLauncher (cuentas no premium). Protegido con el mod Auth: /register y /login
>>"%OUT%\server.properties" echo(online-mode=false
>>"%OUT%\server.properties" echo(white-list=true
>>"%OUT%\server.properties" echo(enforce-whitelist=true
>>"%OUT%\server.properties" echo(spawn-protection=0
>>"%OUT%\server.properties" echo(# Necesario: volar en dragones, planeadores y habilidades hace que el servidor expulse jugadores si esta en false
>>"%OUT%\server.properties" echo(allow-flight=true
>>"%OUT%\server.properties" echo(# Rendimiento: 8 de vision y 6 de simulacion es el punto dulce para 6-10 jugadores con mods
>>"%OUT%\server.properties" echo(view-distance=8
>>"%OUT%\server.properties" echo(simulation-distance=6
>>"%OUT%\server.properties" echo(entity-broadcast-range-percentage=80
>>"%OUT%\server.properties" echo(network-compression-threshold=256
>>"%OUT%\server.properties" echo(sync-chunk-writes=false
>>"%OUT%\server.properties" echo(max-tick-time=-1
>>"%OUT%\server.properties" echo(level-name=world
>>"%OUT%\server.properties" echo(level-seed=
>>"%OUT%\server.properties" echo(level-type=minecraft\:normal
>>"%OUT%\server.properties" echo(generate-structures=true
>>"%OUT%\server.properties" echo(enable-command-block=true
>>"%OUT%\server.properties" echo(server-port=25565
mkdir "%OUT%\world\datapacks"
curl -fsSL --retry 3 -o "%OUT%\world\datapacks\reinos-economia.zip" "https://raw.githubusercontent.com/Darknow-web/Minecraft/HEAD/servidor/datapacks/reinos-economia.zip" || set FALLO=1
echo.
if "%FALLO%"=="1" (echo ALGUNOS MODS FALLARON. Revisa tu internet y vuelve a ejecutar. & pause & exit /b 1)
echo LISTO. Sube las carpetas mods, config y el archivo server.properties
echo desde "subir-al-hosting" a la carpeta principal del servidor.
echo Y el archivo world\datapacks\reinos-economia.zip a la carpeta world/datapacks del servidor.
explorer "%OUT%"
pause
