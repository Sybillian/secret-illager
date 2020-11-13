tellraw @s[tag=playing] {"text":"Rejoined, no game active - was ingame."}
tellraw @s[tag=!playing] {"text":"Rejoined, no game active - was NOT ingame."}
effect clear @s minecraft:invisibility
team join lobby @s
tag @s remove pres
tag @s remove chancellor
tag @s remove nom_chancellor
tag @s remove discarded
tag @s remove playing
tag @s remove dead
tag @s remove illager