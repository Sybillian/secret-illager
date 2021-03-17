tellraw @s[tag=playing] {"translate":"syb.chat.rejoin.midgame.was_ingame"}
tellraw @s[tag=!playing] {"translate":"syb.chat.rejoin.midgame.wasnt_ingame"}

tp @s 0 21 0
clear @s

execute unless score nom_chancellor game_data = @s id run tag @s remove nom_chancellor
execute unless score current_chancellor game_data = @s id run tag @s remove chancellor
execute unless score current_pres game_data = @s id run tag @s remove pres

tag @s remove discarded