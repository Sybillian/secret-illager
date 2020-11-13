team join lobby @s
gamemode adventure @s
title @s times 10 50 10
tp @s 12 21 0
execute at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 1 0.4

execute if score game_active game_data matches 0 run tellraw @s {"text":"Joined for the first time, no game active."}
execute if score game_active game_data matches 1 run tellraw @s {"text":"Joined for the first time midgame."}