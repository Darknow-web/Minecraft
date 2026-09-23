give @s lightmanscurrency:coin_emerald 2
tellraw @a ["",{"text":"[Crónica] ","color":"dark_red","bold":true},{"selector":"@s","color":"yellow"},{"text":" derribó a un Guardián de Valdrath. Los bardos ya ensayan la canción (desafinada).","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
