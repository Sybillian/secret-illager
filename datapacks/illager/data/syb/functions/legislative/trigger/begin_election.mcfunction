tellraw @a {"translate": "syb.chat.no_executive_action","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"score":{"name":"policies_i","objective":"game_data"}}]}

execute if score players game_data matches 5..6 if score policies_i game_data matches 0 run team modify display_2 prefix {"translate":"syb.scoreboard.event.none","color":"red"}
execute if score players game_data matches 5..6 if score policies_i game_data matches 1 run team modify display_2 prefix {"translate":"syb.scoreboard.event.none","color":"red"}
execute if score players game_data matches 5..6 if score policies_i game_data matches 2 run team modify display_2 prefix {"translate":"syb.scoreboard.event.scry","color":"red"}
execute if score players game_data matches 5..6 if score policies_i game_data matches 3 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim","color":"red"}
execute if score players game_data matches 5..6 if score policies_i game_data matches 4 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim_veto","color":"red"}
execute if score players game_data matches 5..6 if score policies_i game_data matches 5 run team modify display_2 prefix {"translate":"syb.scoreboard.event.illager_win","color":"red"}

execute if score players game_data matches 7..8 if score policies_i game_data matches 0 run team modify display_2 prefix {"translate":"syb.scoreboard.event.none","color":"red"}
execute if score players game_data matches 7..8 if score policies_i game_data matches 1 run team modify display_2 prefix {"translate":"syb.scoreboard.event.investigate","color":"red"}
execute if score players game_data matches 7..8 if score policies_i game_data matches 2 run team modify display_2 prefix {"translate":"syb.scoreboard.event.pick_pres","color":"red"}
execute if score players game_data matches 7..8 if score policies_i game_data matches 3 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim","color":"red"}
execute if score players game_data matches 7..8 if score policies_i game_data matches 4 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim_veto","color":"red"}
execute if score players game_data matches 7..8 if score policies_i game_data matches 5 run team modify display_2 prefix {"translate":"syb.scoreboard.event.illager_win","color":"red"}

execute if score players game_data matches 9..10 if score policies_i game_data matches 0 run team modify display_2 prefix {"translate":"syb.scoreboard.event.investigate","color":"red"}
execute if score players game_data matches 9..10 if score policies_i game_data matches 1 run team modify display_2 prefix {"translate":"syb.scoreboard.event.investigate","color":"red"}
execute if score players game_data matches 9..10 if score policies_i game_data matches 2 run team modify display_2 prefix {"translate":"syb.scoreboard.event.pick_pres","color":"red"}
execute if score players game_data matches 9..10 if score policies_i game_data matches 3 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim","color":"red"}
execute if score players game_data matches 9..10 if score policies_i game_data matches 4 run team modify display_2 prefix {"translate":"syb.scoreboard.event.elim_veto","color":"red"}
execute if score players game_data matches 9..10 if score policies_i game_data matches 5 run team modify display_2 prefix {"translate":"syb.scoreboard.event.illager_win","color":"red"}

schedule function syb:election/trigger/new_pres 2s