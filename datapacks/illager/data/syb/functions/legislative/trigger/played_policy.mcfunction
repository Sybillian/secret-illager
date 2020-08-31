execute if score players game_data matches 5..6 if score policies_i game_data matches 0..2 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 5..6 if score policies_i game_data matches 3 run say scry
execute if score players game_data matches 5..6 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 5..6 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 5..6 if score policies_i game_data matches 6 run function syb:game/trigger/end/illager_win

execute if score players game_data matches 7..8 if score policies_i game_data matches 0..1 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 7..8 if score policies_i game_data matches 2 run say investigate someone
execute if score players game_data matches 7..8 if score policies_i game_data matches 3 run say pick candidate
execute if score players game_data matches 7..8 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 7..8 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 7..8 if score policies_i game_data matches 6 run function syb:game/trigger/end/illager_win

execute if score players game_data matches 9..10 if score policies_i game_data matches 0..1 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 9..10 if score policies_i game_data matches 1..2 run say investigate someone
execute if score players game_data matches 9..10 if score policies_i game_data matches 3 run say pick candidate
execute if score players game_data matches 9..10 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 9..10 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 9..10 if score policies_i game_data matches 6 run function syb:game/trigger/end/illager_win

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