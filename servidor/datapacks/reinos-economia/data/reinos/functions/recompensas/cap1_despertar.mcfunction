give @s lightmanscurrency:coin_iron 5
tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},{"selector":"@s","color":"yellow"},{"text":" sobrevivió a su primera noche en Valdrath. Los monstruos están decepcionados.","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
