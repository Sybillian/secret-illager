execute if score players game_data matches 5..6 if score policies_i game_data matches 0..1 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 5..6 if score policies_i game_data matches 2 run say scry
execute if score players game_data matches 5..6 if score policies_i game_data matches 3 run say murder
execute if score players game_data matches 5..6 if score policies_i game_data matches 4 run say murder and veto
execute if score players game_data matches 5..6 if score policies_i game_data matches 5 run say ggez L

execute if score players game_data matches 7..8 if score policies_i game_data matches 0 run function syb:legislative/trigger/begin_election
execute if score players game_data matches 7..8 if score policies_i game_data matches 1 run say investigate someone
execute if score players game_data matches 7..8 if score policies_i game_data matches 2 run say pick candidate
execute if score players game_data matches 7..8 if score policies_i game_data matches 3 run say murder
execute if score players game_data matches 7..8 if score policies_i game_data matches 4 run say murder and veto
execute if score players game_data matches 7..8 if score policies_i game_data matches 5 run say ggez L

execute if score players game_data matches 9..10 if score policies_i game_data matches 0..1 run say investigate someone
execute if score players game_data matches 9..10 if score policies_i game_data matches 2 run say pick candidate
execute if score players game_data matches 9..10 if score policies_i game_data matches 3 run say murder
execute if score players game_data matches 9..10 if score policies_i game_data matches 4 run say murder and veto
execute if score players game_data matches 9..10 if score policies_i game_data matches 5 run say ggez L