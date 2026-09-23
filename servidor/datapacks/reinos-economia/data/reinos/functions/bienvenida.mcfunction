function reinos:dar_libro
tellraw @s ["",{"text":"\n☠ ","color":"dark_red"},{"text":"Bienvenido a Valdrath, forastero.","color":"gold","bold":true},{"text":"\nLee el libro que llevas encima. Pulsa ","color":"gray"},{"text":"L","color":"yellow","bold":true},{"text":" para ver tus Crónicas.\n","color":"gray"}]
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 1.4
