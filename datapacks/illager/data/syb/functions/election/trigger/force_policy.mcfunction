execute if data storage game:deck Cards[0].tag{policy:0} run scoreboard players add policies_v game_data 1
execute if data storage game:deck Cards[0].tag{policy:1} run scoreboard players add policies_i game_data 1
execute if data storage game:deck Cards[0].tag{policy:0} run tellraw @a {"translate":"syb.chat.force_policy.villager","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute if data storage game:deck Cards[0].tag{policy:1} run tellraw @a {"translate":"syb.chat.force_policy.illager","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}

data remove storage game:deck Cards[0]

execute if score policies_i game_data matches 1 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.1","color":"red"}
execute if score policies_i game_data matches 2 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.2","color":"red"}
execute if score policies_i game_data matches 3 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.3","color":"red"}
execute if score policies_i game_data matches 4 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.4","color":"red"}
execute if score policies_i game_data matches 5 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.5","color":"red"}
execute if score policies_i game_data matches 6 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.6","color":"red"}

execute if score policies_v game_data matches 1 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.1","color":"green"}
execute if score policies_v game_data matches 2 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.2","color":"green"}
execute if score policies_v game_data matches 3 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.3","color":"green"}
execute if score policies_v game_data matches 4 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.4","color":"green"}
execute if score policies_v game_data matches 5 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.5","color":"green"}

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

execute if score policies_i game_data matches 1 run setblock 1 22 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 1 run setblock 1 22 -8 minecraft:red_concrete
execute if score policies_i game_data matches 2 run setblock 1 23 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 2 run setblock 1 23 -8 minecraft:red_concrete
execute if score policies_i game_data matches 3 run setblock 1 24 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 3 run setblock 1 24 -8 minecraft:red_concrete
execute if score policies_i game_data matches 4 run setblock 1 25 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 4 run setblock 1 25 -8 minecraft:red_concrete
execute if score policies_i game_data matches 5 run setblock 1 26 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 5 run setblock 1 26 -8 minecraft:red_concrete
execute if score policies_i game_data matches 6 run setblock 1 27 -7 minecraft:red_stained_glass_pane
execute if score policies_i game_data matches 6 run setblock 1 27 -8 minecraft:red_concrete

scoreboard players set fails game_data 0
scoreboard players reset * term_limited
schedule function syb:election/trigger/new_pres 2s