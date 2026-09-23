give @s lightmanscurrency:coin_gold 1
give @s lightmanscurrency:coin_iron 5
tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},{"selector":"@s","color":"yellow"},{"text":" encontró los caminos perdidos. Ahora puede perderse mucho más lejos.","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
