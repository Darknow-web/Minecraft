execute as @a[scores={libro=1..}] run function reinos:dar_libro
scoreboard players reset @a[scores={libro=1..}] libro
scoreboard players enable @a libro
