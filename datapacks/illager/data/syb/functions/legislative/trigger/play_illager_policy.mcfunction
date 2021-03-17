scoreboard players set v_policies_inhand game_data 0
scoreboard players set i_policies_inhand game_data 0
clear @a[tag=chancellor] minecraft:totem_of_undying
scoreboard players add policies_i game_data 1
scoreboard players set @a[tag=chancellor] used_coas 0
tellraw @a {"translate":"syb.chat.play_policy.illager","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=chancellor]"}]}

execute if score policies_i game_data matches 1 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.1","color":"red"}
execute if score policies_i game_data matches 2 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.2","color":"red"}
execute if score policies_i game_data matches 3 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.3","color":"red"}
execute if score policies_i game_data matches 4 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.4","color":"red"}
execute if score policies_i game_data matches 5 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.5","color":"red"}
execute if score policies_i game_data matches 6 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.6","color":"red"}

bossbar set syb:select_policy visible false

execute if score players game_data matches 5..6 if score policies_i game_data matches 0..2 run schedule function syb:legislative/trigger/begin_election 2s
execute if score players game_data matches 5..6 if score policies_i game_data matches 3 run schedule function syb:executive/trigger/init/scry 2s
execute if score players game_data matches 5..6 if score policies_i game_data matches 4 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 5..6 if score policies_i game_data matches 5 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 5..6 if score policies_i game_data matches 6 run schedule function syb:game/trigger/end/illager_win 2s

execute if score players game_data matches 7..8 if score policies_i game_data matches 0..1 run schedule function syb:legislative/trigger/begin_election 2s
execute if score players game_data matches 7..8 if score policies_i game_data matches 2 run schedule function syb:executive/trigger/init/investigate 2s
execute if score players game_data matches 7..8 if score policies_i game_data matches 3 run schedule function syb:executive/trigger/init/choose_pres 2s
execute if score players game_data matches 7..8 if score policies_i game_data matches 4 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 7..8 if score policies_i game_data matches 5 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 7..8 if score policies_i game_data matches 6 run schedule function syb:game/trigger/end/illager_win 2s

execute if score players game_data matches 9..10 if score policies_i game_data matches 0..1 run schedule function syb:legislative/trigger/begin_election 2s
execute if score players game_data matches 9..10 if score policies_i game_data matches 1..2 run schedule function syb:executive/trigger/init/investigate 2s
execute if score players game_data matches 9..10 if score policies_i game_data matches 3 run schedule function syb:executive/trigger/init/choose_pres 2s
execute if score players game_data matches 9..10 if score policies_i game_data matches 4 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 9..10 if score policies_i game_data matches 5 run schedule function syb:executive/trigger/init/elim_player 2s
execute if score players game_data matches 9..10 if score policies_i game_data matches 6 run schedule function syb:game/trigger/end/illager_win 2s

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