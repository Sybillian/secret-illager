execute as @a[tag=pres,scores={used_coas=1..}] if data entity @s SelectedItem{id:"minecraft:player_head"} run function syb:executive/trigger/end/pick_pres

## Lock inventory
execute as @a[tag=pres] store success score @s inv_changed run data modify storage syb:heads permanent[{id:"minecraft:player_head"}] set from entity @s Inventory[{id:"minecraft:player_head"}]
execute as @a[tag=pres] store success score @s inv_changed run kill @e[type=minecraft:item]
execute as @a[tag=pres] if score @s inv_changed matches 1 run function syb:game/inv/heads

execute if score time_seconds math matches 0 run function syb:executive/force/pick_pres
scoreboard players remove phase_time game_data 1

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

execute store result bossbar syb:pick_pres value run scoreboard players get phase_time game_data

bossbar set syb:pick_pres name {"translate":"syb.bossbar.pick_pres.alt","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:pick_pres name {"translate":"syb.bossbar.pick_pres","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}