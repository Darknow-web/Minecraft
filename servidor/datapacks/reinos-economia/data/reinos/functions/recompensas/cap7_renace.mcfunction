give @s lightmanscurrency:coin_diamond 1
title @a title {"text":"¡VALDRATH RENACE!","color":"gold","bold":true}
title @a subtitle [{"text":"gracias a ","color":"yellow"},{"selector":"@s","color":"white"}]
tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},{"selector":"@s","color":"yellow"},{"text":" completó las Crónicas de Valdrath. Que suenen las campanas... y que alguien limpie toda esta sangre.","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
