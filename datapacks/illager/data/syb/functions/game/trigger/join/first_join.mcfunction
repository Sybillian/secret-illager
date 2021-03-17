team join lobby @s
gamemode adventure @s
title @s times 10 50 10
tp @s 12 21 0
execute at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 1 0.4

tellraw @s {"translate":"syb.chat.join.first","color":"yellow","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"translate":"syb.generic.secret_illager","bold":"true","color":"red"},{"translate":"syb.generic.sybillian","color":"green"},{"keybind":"key.advancements","font":"syb:capitalized","bold":"true"},{"translate":"syb.generic.howtoplay"}]}
execute if score game_active game_data matches 1 run tellraw @s {"translate":"syb.chat.join.game_active","color":"yellow","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"}]}