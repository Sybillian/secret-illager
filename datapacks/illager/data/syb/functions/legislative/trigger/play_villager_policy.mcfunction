scoreboard players set v_policies_inhand game_data 0
scoreboard players set i_policies_inhand game_data 0
clear @a[tag=chancellor] minecraft:totem_of_undying
scoreboard players add policies_v game_data 1
scoreboard players set @a[tag=chancellor] used_coas 0
tellraw @a {"translate":"syb.chat.play_policy.villager","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=chancellor]"}]}

execute if score policies_v game_data matches 1 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.1","color":"green"}
execute if score policies_v game_data matches 2 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.2","color":"green"}
execute if score policies_v game_data matches 3 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.3","color":"green"}
execute if score policies_v game_data matches 4 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.4","color":"green"}
execute if score policies_v game_data matches 5 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.5","color":"green"}

bossbar set syb:select_policy visible false

execute if score policies_v game_data matches 5 run function syb:game/trigger/end/villager_win
execute if score policies_v game_data matches ..4 run schedule function syb:election/trigger/new_pres 2s

execute if score policies_v game_data matches 1 run setblock -1 22 -7 minecraft:lime_stained_glass_pane
execute if score policies_v game_data matches 1 run setblock -1 22 -8 minecraft:lime_concrete
execute if score policies_v game_data matches 2 run setblock -1 23 -7 minecraft:lime_stained_glass_pane
execute if score policies_v game_data matches 2 run setblock -1 23 -8 minecraft:lime_concrete
execute if score policies_v game_data matches 3 run setblock -1 24 -7 minecraft:lime_stained_glass_pane
execute if score policies_v game_data matches 3 run setblock -1 24 -8 minecraft:lime_concrete
execute if score policies_v game_data matches 4 run setblock -1 25 -7 minecraft:lime_stained_glass_pane
execute if score policies_v game_data matches 4 run setblock -1 25 -8 minecraft:lime_concrete
execute if score policies_v game_data matches 5 run setblock -1 26 -7 minecraft:lime_stained_glass_pane
execute if score policies_v game_data matches 5 run setblock -1 26 -8 minecraft:lime_concrete