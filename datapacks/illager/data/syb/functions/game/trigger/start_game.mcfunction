execute as @a run scoreboard players add players game_data 1
scoreboard players set start_countdown game_data 10
execute if score players game_data matches 5.. run function syb:game/countdown
execute if score players game_data matches ..4 run function syb:game/trigger/cannot_start