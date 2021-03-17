tellraw @s[tag=playing] {"translate":"syb.chat.rejoin.game_ended"}
tellraw @s[tag=!playing] {"translate":"syb.chat.rejoin.no_game"}
effect clear @s minecraft:invisibility
team join lobby @s
tag @s remove pres
tag @s remove chancellor
tag @s remove nom_chancellor
tag @s remove discarded
tag @s remove playing
tag @s remove dead
tag @s remove illager