execute if score players game_data matches 1.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:1s}}] run scoreboard players set @s nom_id 1
execute if score players game_data matches 2.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:2s}}] run scoreboard players set @s nom_id 2
execute if score players game_data matches 3.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:3s}}] run scoreboard players set @s nom_id 3
execute if score players game_data matches 4.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:4s}}] run scoreboard players set @s nom_id 4
execute if score players game_data matches 5.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:5s}}] run scoreboard players set @s nom_id 5
execute if score players game_data matches 6.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:6s}}] run scoreboard players set @s nom_id 6
execute if score players game_data matches 7.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:7s}}] run scoreboard players set @s nom_id 7
execute if score players game_data matches 8.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:8s}}] run scoreboard players set @s nom_id 8
execute if score players game_data matches 9.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:9s}}] run scoreboard players set @s nom_id 9
execute if score players game_data matches 10.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:10s}}] run scoreboard players set @s nom_id 10
execute if score players game_data matches 11.. unless data entity @s Inventory[{id:"minecraft:player_head",tag:{player_id:11s}}] run scoreboard players set @s nom_id 11
execute if score @s nom_id matches 1.. run function syb:phase/day/sel_nom

scoreboard players remove phase_time game_data 1
scoreboard players operation game_seconds game_data = phase_time game_data
scoreboard players operation game_seconds game_data /= 20 math

scoreboard players operation time_ticks math = phase_time game_data
scoreboard players operation time_minutes math = time_ticks math
scoreboard players operation time_minutes math /= 1200 math
scoreboard players operation stored_ticks math = time_minutes math
scoreboard players operation stored_ticks math *= 1200 math
scoreboard players operation time_ticks math -= stored_ticks math
scoreboard players operation time_seconds math = time_ticks math
scoreboard players operation time_seconds math /= 20 math

execute if score time_minutes math < 10 math run scoreboard players set min_below_10 math 0
execute if score time_minutes math >= 10 math run scoreboard players reset min_below_10
execute if score time_seconds math < 10 math run scoreboard players set sec_below_10 math 0
execute if score time_seconds math >= 10 math run scoreboard players reset sec_below_10

execute store result bossbar syb:timer_day value run scoreboard players get phase_time game_data
execute store result bossbar syb:timer_day value run scoreboard players get phase_time game_data

bossbar set syb:timer_day name {"translate":"syb.bossbar.timer_day.alt","color":"yellow","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:timer_day name {"translate":"syb.bossbar.timer_day","color":"yellow","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}