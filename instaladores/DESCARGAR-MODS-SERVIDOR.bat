@echo off
chcp 65001 >nul
title Reinos de Aventura 1.3.0 - archivos del servidor
echo Descarga los mods del SERVIDOR en la carpeta "subir-al-hosting" (junto a este archivo).
echo Luego sube su contenido al hosting con FileZilla (SFTP).
pause
cd /d "%~dp0"
set "OUT=%~dp0subir-al-hosting"
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%\mods" "%OUT%\config"
set FALLO=0
echo Descargando 89 mods (unos 300 MB)...
echo [1/89] AI Improvements: Performance Tuning
curl -fsSL --retry 3 -o "%OUT%\mods\AI-Improvements-1.20-0.5.2.jar" "https://cdn.modrinth.com/data/DSVgwcji/versions/eJihmpNQ/AI-Improvements-1.20-0.5.2.jar" || set FALLO=1
echo [2/89] Alex's Mobs
curl -fsSL --retry 3 -o "%OUT%\mods\alexsmobs-1.22.9.jar" "https://cdn.modrinth.com/data/2cMuAZAp/versions/XoIASRVU/alexsmobs-1.22.9.jar" || set FALLO=1
echo [3/89] Apotheosis
curl -fsSL --retry 3 -o "%OUT%\mods\Apotheosis-1.20.1-7.4.8.jar" "https://cdn.modrinth.com/data/rqFWfVlz/versions/tT3CLYvK/Apotheosis-1.20.1-7.4.8.jar" || set FALLO=1
echo [4/89] Apothic Attributes
curl -fsSL --retry 3 -o "%OUT%\mods\ApothicAttributes-1.20.1-1.3.7.jar" "https://cdn.modrinth.com/data/DGaH8Rh0/versions/fwL9CWGd/ApothicAttributes-1.20.1-1.3.7.jar" || set FALLO=1
echo [5/89] AppleSkin
curl -fsSL --retry 3 -o "%OUT%\mods\appleskin-forge-mc1.20.1-2.5.1.jar" "https://cdn.modrinth.com/data/EsAfCjCV/versions/XdXDExVF/appleskin-forge-mc1.20.1-2.5.1.jar" || set FALLO=1
echo [6/89] Aquaculture 2
curl -fsSL --retry 3 -o "%OUT%\mods\Aquaculture-1.20.1-2.5.7.jar" "https://cdn.modrinth.com/data/Vl1uNAuy/versions/wNiFoROs/Aquaculture-1.20.1-2.5.7.jar" || set FALLO=1
echo [7/89] Architectury API
curl -fsSL --retry 3 -o "%OUT%\mods\architectury-9.2.14-forge.jar" "https://cdn.modrinth.com/data/lhGA9TYQ/versions/1MKTLiiG/architectury-9.2.14-forge.jar" || set FALLO=1
echo [8/89] Artifacts
curl -fsSL --retry 3 -o "%OUT%\mods\artifacts-forge-9.5.19.jar" "https://cdn.modrinth.com/data/P0Mu4wcQ/versions/lrLPBSzq/artifacts-forge-9.5.19.jar" || set FALLO=1
echo [9/89] AttributeFix
curl -fsSL --retry 3 -o "%OUT%\mods\AttributeFix-Forge-1.20.1-21.0.5.jar" "https://cdn.modrinth.com/data/lOOpEntO/versions/ihWybkI9/AttributeFix-Forge-1.20.1-21.0.5.jar" || set FALLO=1
echo [10/89] Auth
curl -fsSL --retry 3 -o "%OUT%\mods\auth-1.0.0.jar" "https://cdn.modrinth.com/data/RpXNx59A/versions/dJqoN5vT/auth-1.0.0.jar" || set FALLO=1
echo [11/89] Balm
curl -fsSL --retry 3 -o "%OUT%\mods\balm-forge-1.20.1-7.3.43.jar" "https://cdn.modrinth.com/data/MBAkmtvl/versions/1VlYVa3k/balm-forge-1.20.1-7.3.43.jar" || set FALLO=1
echo [12/89] Better Combat
curl -fsSL --retry 3 -o "%OUT%\mods\bettercombat-forge-1.9.0+1.20.1.jar" "https://cdn.modrinth.com/data/5sy6g3kz/versions/rnhiaw3t/bettercombat-forge-1.9.0%%2B1.20.1.jar" || set FALLO=1
echo [13/89] Bountiful
curl -fsSL --retry 3 -o "%OUT%\mods\Bountiful-6.0.4+1.20.1-forge.jar" "https://cdn.modrinth.com/data/BpwWFOVM/versions/EM7Su3PD/Bountiful-6.0.4%%2B1.20.1-forge.jar" || set FALLO=1
echo [14/89] Caelus API
curl -fsSL --retry 3 -o "%OUT%\mods\caelus-forge-3.2.0+1.20.1.jar" "https://cdn.modrinth.com/data/40FYwb4z/versions/mRry0DgY/caelus-forge-3.2.0%%2B1.20.1.jar" || set FALLO=1
echo [15/89] Canary
curl -fsSL --retry 3 -o "%OUT%\mods\canary-mc1.20.1-0.3.3.jar" "https://cdn.modrinth.com/data/qa2H4BS9/versions/lauzXB0n/canary-mc1.20.1-0.3.3.jar" || set FALLO=1
echo [16/89] Carry On
curl -fsSL --retry 3 -o "%OUT%\mods\carryon-forge-1.20.1-2.1.2.7.jar" "https://cdn.modrinth.com/data/joEfVgkn/versions/edGQD16r/carryon-forge-1.20.1-2.1.2.7.jar" || set FALLO=1
echo [17/89] Chunky
curl -fsSL --retry 3 -o "%OUT%\mods\Chunky-1.3.146.jar" "https://cdn.modrinth.com/data/fALzjamp/versions/4FTDk9wv/Chunky-1.3.146.jar" || set FALLO=1
echo [18/89] Citadel
curl -fsSL --retry 3 -o "%OUT%\mods\citadel-2.6.3-1.20.1.jar" "https://cdn.modrinth.com/data/jJfV67b1/versions/lTAAe4sZ/citadel-2.6.3-1.20.1.jar" || set FALLO=1
echo [19/89] Cloth Config API
curl -fsSL --retry 3 -o "%OUT%\mods\cloth-config-11.1.136-forge.jar" "https://cdn.modrinth.com/data/9s6osm5g/versions/t8TXrZvZ/cloth-config-11.1.136-forge.jar" || set FALLO=1
echo [20/89] Clumps
curl -fsSL --retry 3 -o "%OUT%\mods\Clumps-forge-1.20.1-12.0.0.4.jar" "https://cdn.modrinth.com/data/Wnxd13zP/versions/nAHGB5ls/Clumps-forge-1.20.1-12.0.0.4.jar" || set FALLO=1
echo [21/89] Combat Roll
curl -fsSL --retry 3 -o "%OUT%\mods\combatroll-forge-1.3.3+1.20.1.jar" "https://cdn.modrinth.com/data/wGKYL7st/versions/532t65Zz/combatroll-forge-1.3.3%%2B1.20.1.jar" || set FALLO=1
echo [22/89] Comforts
curl -fsSL --retry 3 -o "%OUT%\mods\comforts-forge-6.4.0+1.20.1.jar" "https://cdn.modrinth.com/data/SaCpeal4/versions/gBDsc134/comforts-forge-6.4.0%%2B1.20.1.jar" || set FALLO=1
echo [23/89] Corpse
curl -fsSL --retry 3 -o "%OUT%\mods\corpse-forge-1.20.1-1.0.23.jar" "https://cdn.modrinth.com/data/WrpuIfhw/versions/7fc0hJN6/corpse-forge-1.20.1-1.0.23.jar" || set FALLO=1
echo [24/89] Cristel Lib
curl -fsSL --retry 3 -o "%OUT%\mods\cristellib-1.1.6-forge.jar" "https://cdn.modrinth.com/data/cl223EMc/versions/DOsSK4NK/cristellib-1.1.6-forge.jar" || set FALLO=1
echo [25/89] Curios API
curl -fsSL --retry 3 -o "%OUT%\mods\curios-forge-5.14.1+1.20.1.jar" "https://cdn.modrinth.com/data/vvuO3ImH/versions/IPQlZkz1/curios-forge-5.14.1%%2B1.20.1.jar" || set FALLO=1
echo [26/89] Dragon Mounts: Legacy
curl -fsSL --retry 3 -o "%OUT%\mods\dragonmounts-1.20.1-1.2.3-beta.jar" "https://cdn.modrinth.com/data/G3EPcczP/versions/NVLJuxL1/dragonmounts-1.20.1-1.2.3-beta.jar" || set FALLO=1
echo [27/89] Dungeons and Taverns
curl -fsSL --retry 3 -o "%OUT%\mods\dungeons-and-taverns-3.0.3.f.jar" "https://cdn.modrinth.com/data/tpehi7ww/versions/ojHpWOrz/dungeons-and-taverns-3.0.3.f.jar" || set FALLO=1
echo [28/89] Explorer's Compass
curl -fsSL --retry 3 -o "%OUT%\mods\ExplorersCompass-1.20.1-1.4.0-forge.jar" "https://cdn.modrinth.com/data/RV1qfVQ8/versions/7ZdJbCOx/ExplorersCompass-1.20.1-1.4.0-forge.jar" || set FALLO=1
echo [29/89] Explorify
curl -fsSL --retry 3 -o "%OUT%\mods\Explorify v1.6.5.mod.jar" "https://cdn.modrinth.com/data/HSfsxuTo/versions/CuBdAr31/Explorify%%20v1.6.5.mod.jar" || set FALLO=1
echo [30/89] Farmer's Delight
curl -fsSL --retry 3 -o "%OUT%\mods\FarmersDelight-1.20.1-1.3.4.jar" "https://cdn.modrinth.com/data/R2OftAxM/versions/SiIpcZzM/FarmersDelight-1.20.1-1.3.4.jar" || set FALLO=1
echo [31/89] FerriteCore
curl -fsSL --retry 3 -o "%OUT%\mods\ferritecore-6.0.1-forge.jar" "https://cdn.modrinth.com/data/uXXizFIs/versions/DG5Fn9Sz/ferritecore-6.0.1-forge.jar" || set FALLO=1
echo [32/89] FriendsFoes (Forge/NeoForge)
curl -fsSL --retry 3 -o "%OUT%\mods\friendsandfoes-forge-mc1.20.1-3.0.9.jar" "https://cdn.modrinth.com/data/BOCJKD49/versions/ihFi4QrR/friendsandfoes-forge-mc1.20.1-3.0.9.jar" || set FALLO=1
echo [33/89] Fzzy Config
curl -fsSL --retry 3 -o "%OUT%\mods\fzzy_config-0.7.7+1.20.1+forge.jar" "https://cdn.modrinth.com/data/hYykXjDp/versions/53kg5uoF/fzzy_config-0.7.7%%2B1.20.1%%2Bforge.jar" || set FALLO=1
echo [34/89] Geckolib
curl -fsSL --retry 3 -o "%OUT%\mods\geckolib-forge-1.20.1-4.8.4.jar" "https://cdn.modrinth.com/data/8BmcQJ2H/versions/aC5KMoNg/geckolib-forge-1.20.1-4.8.4.jar" || set FALLO=1
echo [35/89] Ice and Fire
curl -fsSL --retry 3 -o "%OUT%\mods\iceandfire-2.1.13-1.20.1-beta-5.jar" "https://cdn.modrinth.com/data/LVnvHVBp/versions/EzN8KQYF/iceandfire-2.1.13-1.20.1-beta-5.jar" || set FALLO=1
echo [36/89] Illager Invasion
curl -fsSL --retry 3 -o "%OUT%\mods\IllagerInvasion-v8.0.7-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/jSV9w0J5/versions/h3xEIiW8/IllagerInvasion-v8.0.7-1.20.1-Forge.jar" || set FALLO=1
echo [37/89] Immersive Armors
curl -fsSL --retry 3 -o "%OUT%\mods\immersive_armors-1.7.2+1.20.1-forge.jar" "https://cdn.modrinth.com/data/eE2Db4YU/versions/ZPdUJXFG/immersive_armors-1.7.2%%2B1.20.1-forge.jar" || set FALLO=1
echo [38/89] Iron's Lib
curl -fsSL --retry 3 -o "%OUT%\mods\irons_lib-1.20.1-2.1.0.jar" "https://cdn.modrinth.com/data/9nfaJPtX/versions/DbpRfa2k/irons_lib-1.20.1-2.1.0.jar" || set FALLO=1
echo [39/89] Iron's Spells 'n Spellbooks
curl -fsSL --retry 3 -o "%OUT%\mods\irons_spellbooks-1.20.1-3.16.3.jar" "https://cdn.modrinth.com/data/s4OWxYQQ/versions/hZaEegS9/irons_spellbooks-1.20.1-3.16.3.jar" || set FALLO=1
echo [40/89] Jade 🔍
curl -fsSL --retry 3 -o "%OUT%\mods\Jade-1.20.1-Forge-11.13.3.jar" "https://cdn.modrinth.com/data/nvQzSEkH/versions/xJQHCmWJ/Jade-1.20.1-Forge-11.13.3.jar" || set FALLO=1
echo [41/89] Just Enough Items (JEI)
curl -fsSL --retry 3 -o "%OUT%\mods\jei-1.20.1-forge-15.62.0.214.jar" "https://cdn.modrinth.com/data/u6dRKJwZ/versions/nEevlS4k/jei-1.20.1-forge-15.62.0.214.jar" || set FALLO=1
echo [42/89] Kambrik
curl -fsSL --retry 3 -o "%OUT%\mods\Kambrik-6.1.1+1.20.1-forge.jar" "https://cdn.modrinth.com/data/zfbCkvdZ/versions/er56DwLJ/Kambrik-6.1.1%%2B1.20.1-forge.jar" || set FALLO=1
echo [43/89] Kotlin for Forge
curl -fsSL --retry 3 -o "%OUT%\mods\kotlinforforge-4.12.0-all.jar" "https://cdn.modrinth.com/data/ordsPcFz/versions/Zsh14XeQ/kotlinforforge-4.12.0-all.jar" || set FALLO=1
echo [44/89] L_Ender's Cataclysm
curl -fsSL --retry 3 -o "%OUT%\mods\L_Enders_Cataclysm-3.31.jar" "https://cdn.modrinth.com/data/46KJle7n/versions/C3H0azzB/L_Enders_Cataclysm-3.31.jar" || set FALLO=1
echo [45/89] Lightman's Currency
curl -fsSL --retry 3 -o "%OUT%\mods\lightmanscurrency-1.20.1-2.3.0.5.jar" "https://cdn.modrinth.com/data/wvMc8AJt/versions/eAALa47O/lightmanscurrency-1.20.1-2.3.0.5.jar" || set FALLO=1
echo [46/89] Lionfish-API
curl -fsSL --retry 3 -o "%OUT%\mods\lionfishapi-3.0.jar" "https://cdn.modrinth.com/data/FoVacERa/versions/CPftDBcY/lionfishapi-3.0.jar" || set FALLO=1
echo [47/89] Lithostitched
curl -fsSL --retry 3 -o "%OUT%\mods\lithostitched-forge-1.20.1-1.4.11.jar" "https://cdn.modrinth.com/data/XaDC71GB/versions/srPoHKt8/lithostitched-forge-1.20.1-1.4.11.jar" || set FALLO=1
echo [48/89] Lootr
curl -fsSL --retry 3 -o "%OUT%\mods\lootr-forge-1.20-0.7.35.94.jar" "https://cdn.modrinth.com/data/EltpO5cN/versions/mWTXC1ZX/lootr-forge-1.20-0.7.35.94.jar" || set FALLO=1
echo [49/89] Memory Leak Fix
curl -fsSL --retry 3 -o "%OUT%\mods\memoryleakfix-forge-1.17+-1.1.5.jar" "https://cdn.modrinth.com/data/NRjRiSSD/versions/3w0IxNtk/memoryleakfix-forge-1.17%%2B-1.1.5.jar" || set FALLO=1
echo [50/89] MezzConfig
curl -fsSL --retry 3 -o "%OUT%\mods\mezz_config-1.20.1-forge-0.6.3.jar" "https://cdn.modrinth.com/data/7tEfOcA7/versions/euqS2osE/mezz_config-1.20.1-forge-0.6.3.jar" || set FALLO=1
echo [51/89] ModernFix
curl -fsSL --retry 3 -o "%OUT%\mods\modernfix-forge-5.27.83+mc1.20.1.jar" "https://cdn.modrinth.com/data/nmDcB62a/versions/jAZ7Ge3d/modernfix-forge-5.27.83%%2Bmc1.20.1.jar" || set FALLO=1
echo [52/89] Moog's Structure Lib (moogs_structures)
curl -fsSL --retry 3 -o "%OUT%\mods\MoogsStructureLib-forge-1.20-3.3.1.jar" "https://cdn.modrinth.com/data/1oUDhxuy/versions/Xe7AFvDZ/MoogsStructureLib-forge-1.20-3.3.1.jar" || set FALLO=1
echo [53/89] MVS - Moog's Voyager Structures
curl -fsSL --retry 3 -o "%OUT%\mods\MoogsVoyagerStructures-universal-1.20-5.1.1.jar" "https://cdn.modrinth.com/data/OQAgZMH1/versions/HZpL7DX5/MoogsVoyagerStructures-universal-1.20-5.1.1.jar" || set FALLO=1
echo [54/89] Moonlight Lib
curl -fsSL --retry 3 -o "%OUT%\mods\moonlight-1.20-2.16.35-forge.jar" "https://cdn.modrinth.com/data/twkfQtEc/versions/W0ZWjZib/moonlight-1.20-2.16.35-forge.jar" || set FALLO=1
echo [55/89] Mowzie's Mobs
curl -fsSL --retry 3 -o "%OUT%\mods\mowziesmobs-1.8.2.jar" "https://cdn.modrinth.com/data/BFbX9xcm/versions/acYEfsJa/mowziesmobs-1.8.2.jar" || set FALLO=1
echo [56/89] Mutant Monsters
curl -fsSL --retry 3 -o "%OUT%\mods\MutantMonsters-v8.0.8-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/derP0ten/versions/CUgYzMnF/MutantMonsters-v8.0.8-1.20.1-Forge.jar" || set FALLO=1
echo [57/89] Naturalist
curl -fsSL --retry 3 -o "%OUT%\mods\naturalist-5.0pre4+forge-1.20.1.jar" "https://cdn.modrinth.com/data/F8BQNPWX/versions/wnR21jg1/naturalist-5.0pre4%%2Bforge-1.20.1.jar" || set FALLO=1
echo [58/89] Open Parties and Claims
curl -fsSL --retry 3 -o "%OUT%\mods\open-parties-and-claims-forge-1.20.1-0.31.6.jar" "https://cdn.modrinth.com/data/gF3BGWvG/versions/3aml2k9o/open-parties-and-claims-forge-1.20.1-0.31.6.jar" || set FALLO=1
echo [59/89] Origins (Forge)
curl -fsSL --retry 3 -o "%OUT%\mods\origins-forge-1.20.1-1.10.0.9-all.jar" "https://cdn.modrinth.com/data/jl3m2lR9/versions/vynFXywM/origins-forge-1.20.1-1.10.0.9-all.jar" || set FALLO=1
echo [60/89] Packet Fixer
curl -fsSL --retry 3 -o "%OUT%\mods\packetfixer-3.3.2-1.18-1.20.4-merged.jar" "https://cdn.modrinth.com/data/c7m1mi73/versions/9F4NGhGR/packetfixer-3.3.2-1.18-1.20.4-merged.jar" || set FALLO=1
echo [61/89] Patchouli
curl -fsSL --retry 3 -o "%OUT%\mods\Patchouli-1.20.1-85-FORGE.jar" "https://cdn.modrinth.com/data/nU0bVIaL/versions/94dtOLgZ/Patchouli-1.20.1-85-FORGE.jar" || set FALLO=1
echo [62/89] Placebo
curl -fsSL --retry 3 -o "%OUT%\mods\Placebo-1.20.1-8.6.3.jar" "https://cdn.modrinth.com/data/tCkE8p2N/versions/6SkuAGoz/Placebo-1.20.1-8.6.3.jar" || set FALLO=1
echo [63/89] playerAnimator
curl -fsSL --retry 3 -o "%OUT%\mods\player-animation-lib-forge-1.0.2-rc1+1.20.jar" "https://cdn.modrinth.com/data/gedNE4y2/versions/xe2EVE6q/player-animation-lib-forge-1.0.2-rc1%%2B1.20.jar" || set FALLO=1
echo [64/89] Puzzles Lib
curl -fsSL --retry 3 -o "%OUT%\mods\PuzzlesLib-v8.1.33-1.20.1-Forge.jar" "https://cdn.modrinth.com/data/QAGBst4M/versions/mIyVGf3d/PuzzlesLib-v8.1.33-1.20.1-Forge.jar" || set FALLO=1
echo [65/89] Repurposed Structures - Neoforge/Forge
curl -fsSL --retry 3 -o "%OUT%\mods\repurposed_structures-7.1.25+1.20.1-forge.jar" "https://cdn.modrinth.com/data/QDNS5oAT/versions/GgUh2Zx7/repurposed_structures-7.1.25%%2B1.20.1-forge.jar" || set FALLO=1
echo [66/89] Simple Voice Chat
curl -fsSL --retry 3 -o "%OUT%\mods\voicechat-forge-1.20.1-2.6.24.jar" "https://cdn.modrinth.com/data/9eGKb6K1/versions/lWvbAZ3P/voicechat-forge-1.20.1-2.6.24.jar" || set FALLO=1
echo [67/89] Simply Swords
curl -fsSL --retry 3 -o "%OUT%\mods\simplyswords-forge-neoforge-1.70.2-1.20.1.jar" "https://cdn.modrinth.com/data/bK3Ubu9p/versions/Na6e94J1/simplyswords-forge-neoforge-1.70.2-1.20.1.jar" || set FALLO=1
echo [68/89] Sophisticated Backpacks
curl -fsSL --retry 3 -o "%OUT%\mods\sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" "https://cdn.modrinth.com/data/TyCTlI4b/versions/XxOZuQnU/sophisticatedbackpacks-1.20.1-3.26.3.2157.jar" || set FALLO=1
echo [69/89] Sophisticated Core
curl -fsSL --retry 3 -o "%OUT%\mods\sophisticatedcore-1.20.1-1.5.1.2335.jar" "https://cdn.modrinth.com/data/nmoqTijg/versions/1Xl7lP0L/sophisticatedcore-1.20.1-1.5.1.2335.jar" || set FALLO=1
echo [70/89] spark
curl -fsSL --retry 3 -o "%OUT%\mods\spark-1.10.53-forge.jar" "https://cdn.modrinth.com/data/l6YH9Als/versions/4FXHDE9F/spark-1.10.53-forge.jar" || set FALLO=1
echo [71/89] Structory
curl -fsSL --retry 3 -o "%OUT%\mods\Structory_1.20.x_v1.3.5.jar" "https://cdn.modrinth.com/data/aKCwCJlY/versions/FkaSuQb0/Structory_1.20.x_v1.3.5.jar" || set FALLO=1
echo [72/89] Supplementaries
curl -fsSL --retry 3 -o "%OUT%\mods\supplementaries-1.20-3.1.43-forge.jar" "https://cdn.modrinth.com/data/fFEIiSDQ/versions/S0TIJ1hU/supplementaries-1.20-3.1.43-forge.jar" || set FALLO=1
echo [73/89] Tectonic
curl -fsSL --retry 3 -o "%OUT%\mods\tectonic-3.0.17-forge-1.20.1.jar" "https://cdn.modrinth.com/data/lWDHr9jE/versions/KLmvRxwh/tectonic-3.0.17-forge-1.20.1.jar" || set FALLO=1
echo [74/89] Terralith
curl -fsSL --retry 3 -o "%OUT%\mods\Terralith_1.20.x_v2.5.4.jar" "https://cdn.modrinth.com/data/8oi3bsk5/versions/WeYhEb5d/Terralith_1.20.x_v2.5.4.jar" || set FALLO=1
echo [75/89] Towns and Towers
curl -fsSL --retry 3 -o "%OUT%\mods\Towns-and-Towers-1.12-Fabric+Forge.jar" "https://cdn.modrinth.com/data/DjLobEOy/versions/7ZwnSrVW/Towns-and-Towers-1.12-Fabric%%2BForge.jar" || set FALLO=1
echo [76/89] Traveler's Backpack
curl -fsSL --retry 3 -o "%OUT%\mods\travelersbackpack-forge-1.20.1-9.1.57.jar" "https://cdn.modrinth.com/data/rlloIFEV/versions/wuJ2J0SL/travelersbackpack-forge-1.20.1-9.1.57.jar" || set FALLO=1
echo [77/89] Waystones
curl -fsSL --retry 3 -o "%OUT%\mods\waystones-forge-1.20.1-14.1.21.jar" "https://cdn.modrinth.com/data/LOpKHB2A/versions/Y0IgdaoP/waystones-forge-1.20.1-14.1.21.jar" || set FALLO=1
echo [78/89] When Dungeons Arise
curl -fsSL --retry 3 -o "%OUT%\mods\DungeonsArise-1.20.x-2.1.58-release.jar" "https://cdn.modrinth.com/data/8DfbfASn/versions/6hQpx5Tc/DungeonsArise-1.20.x-2.1.58-release.jar" || set FALLO=1
echo [79/89] Xaero's Minimap
curl -fsSL --retry 3 -o "%OUT%\mods\xaerominimap-forge-1.20.1-26.5.0.jar" "https://cdn.modrinth.com/data/1bokaNcj/versions/Juh6inLY/xaerominimap-forge-1.20.1-26.5.0.jar" || set FALLO=1
echo [80/89] Xaero's World Map
curl -fsSL --retry 3 -o "%OUT%\mods\xaeroworldmap-forge-1.20.1-1.46.0.jar" "https://cdn.modrinth.com/data/NcUtCpym/versions/rlPmwaQX/xaeroworldmap-forge-1.20.1-1.46.0.jar" || set FALLO=1
echo [81/89] YUNG's API
curl -fsSL --retry 3 -o "%OUT%\mods\YungsApi-1.20-Forge-4.0.6.jar" "https://cdn.modrinth.com/data/Ua7DFN59/versions/PJOYAmAs/YungsApi-1.20-Forge-4.0.6.jar" || set FALLO=1
echo [82/89] YUNG's Better Desert Temples
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" "https://cdn.modrinth.com/data/XNlO7sBv/versions/lRK2ZA9U/YungsBetterDesertTemples-1.20-Forge-3.0.3.jar" || set FALLO=1
echo [83/89] YUNG's Better Dungeons
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterDungeons-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/o1C1Dkj5/versions/kPiQ6v4q/YungsBetterDungeons-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [84/89] YUNG's Better Mineshafts
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterMineshafts-1.20-Forge-4.0.4.jar" "https://cdn.modrinth.com/data/HjmxVlSr/versions/kVO57zxB/YungsBetterMineshafts-1.20-Forge-4.0.4.jar" || set FALLO=1
echo [85/89] YUNG's Better Nether Fortresses
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" "https://cdn.modrinth.com/data/Z2mXHnxP/versions/2nUEz0zq/YungsBetterNetherFortresses-1.20-Forge-2.0.6.jar" || set FALLO=1
echo [86/89] YUNG's Better Ocean Monuments
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" "https://cdn.modrinth.com/data/3dT9sgt4/versions/SN4iZ7wf/YungsBetterOceanMonuments-1.20-Forge-3.0.4.jar" || set FALLO=1
echo [87/89] YUNG's Better Strongholds
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBetterStrongholds-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/kidLKymU/versions/rwiShgsc/YungsBetterStrongholds-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [88/89] YUNG's Bridges
curl -fsSL --retry 3 -o "%OUT%\mods\YungsBridges-1.20-Forge-4.0.3.jar" "https://cdn.modrinth.com/data/Ht4BfYp6/versions/KgO1gfM2/YungsBridges-1.20-Forge-4.0.3.jar" || set FALLO=1
echo [89/89] YUNG's Extras
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
>>"%OUT%\server.properties" echo(# Whitelist apagada: con TLauncher (offline) los UUID no coinciden. La proteccion la da el mod Auth (/register y /login)
>>"%OUT%\server.properties" echo(white-list=false
>>"%OUT%\server.properties" echo(enforce-whitelist=false
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
