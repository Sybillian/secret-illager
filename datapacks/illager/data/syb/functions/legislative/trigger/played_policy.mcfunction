execute if score players game_data matches 5..6 if score policies_i game_data matches 0..2 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 5..6 if score policies_i game_data matches 3 run say scry
execute if score players game_data matches 5..6 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 5..6 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 5..6 if score policies_i game_data matches 6 run say ggez L

execute if score players game_data matches 7..8 if score policies_i game_data matches 0..1 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 7..8 if score policies_i game_data matches 2 run say investigate someone
execute if score players game_data matches 7..8 if score policies_i game_data matches 3 run say pick candidate
execute if score players game_data matches 7..8 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 7..8 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 7..8 if score policies_i game_data matches 6 run say ggez L

execute if score players game_data matches 9..10 if score policies_i game_data matches 0..1 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 9..10 if score policies_i game_data matches 1..2 run say investigate someone
execute if score players game_data matches 9..10 if score policies_i game_data matches 3 run say pick candidate
execute if score players game_data matches 9..10 if score policies_i game_data matches 4 run say murder
execute if score players game_data matches 9..10 if score policies_i game_data matches 5 run say murder and veto
execute if score players game_data matches 9..10 if score policies_i game_data matches 6 run say ggez L

execute if score policies_v game_data matches 1 run setblock -1 22 -7
execute if score policies_v game_data matches 1 run setblock -1 22 -8
execute if score policies_v game_data matches 1 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.1","color":"green"}
execute if score policies_v game_data matches 2 run setblock -1 23 -7
execute if score policies_v game_data matches 2 run setblock -1 23 -8
execute if score policies_v game_data matches 2 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.2","color":"green"}
execute if score policies_v game_data matches 3 run setblock -1 24 -7
execute if score policies_v game_data matches 3 run setblock -1 24 -8
execute if score policies_v game_data matches 3 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.3","color":"green"}
execute if score policies_v game_data matches 4 run setblock -1 25 -7
execute if score policies_v game_data matches 4 run setblock -1 25 -8
execute if score policies_v game_data matches 4 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.4","color":"green"}
execute if score policies_v game_data matches 5 run setblock -1 26 -7
execute if score policies_v game_data matches 5 run setblock -1 26 -8
execute if score policies_v game_data matches 5 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.5","color":"green"}

execute if score policies_i game_data matches 1 run setblock 1 22 -7
execute if score policies_i game_data matches 1 run setblock 1 22 -8
execute if score policies_i game_data matches 1 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.1","color":"red"}
execute if score policies_i game_data matches 2 run setblock 1 23 -7
execute if score policies_i game_data matches 2 run setblock 1 23 -8
execute if score policies_i game_data matches 2 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.2","color":"red"}
execute if score policies_i game_data matches 3 run setblock 1 24 -7
execute if score policies_i game_data matches 3 run setblock 1 24 -8
execute if score policies_i game_data matches 3 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.3","color":"red"}
execute if score policies_i game_data matches 4 run setblock 1 25 -7
execute if score policies_i game_data matches 4 run setblock 1 25 -8
execute if score policies_i game_data matches 4 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.4","color":"red"}
execute if score policies_i game_data matches 5 run setblock 1 26 -7
execute if score policies_i game_data matches 5 run setblock 1 26 -8
execute if score policies_i game_data matches 5 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.5","color":"red"}
execute if score policies_i game_data matches 6 run setblock 1 27 -7
execute if score policies_i game_data matches 6 run setblock 1 27 -8
execute if score policies_i game_data matches 6 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.6","color":"red"}