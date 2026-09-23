give @s lightmanscurrency:coin_emerald 1
tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},{"selector":"@s","color":"yellow"},{"text":" tiene sangre de dragón en las manos. Esperemos que no sea la suya.","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
