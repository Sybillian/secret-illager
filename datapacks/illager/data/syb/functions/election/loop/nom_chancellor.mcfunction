execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{id:"minecraft:player_head"}},scores={used_coas=1..}] store result score nom_chancellor game_data run data get entity @s SelectedItem.tag.player_id
execute if score nom_chancellor game_data matches 1.. run function syb:election/trigger/selected_chancellor

## Lock inventory
execute as @a[tag=pres] store success score @s inv_changed run data modify storage syb:heads permanent[{id:"minecraft:player_head"}] set from entity @s Inventory[{id:"minecraft:player_head"}]
execute as @a[tag=pres] store success score @s inv_changed run kill @e[type=minecraft:item]
execute as @a[tag=pres] if score @s inv_changed matches 1 run function syb:game/inv/nom_heads

execute if score phase_time game_data matches 0 run function syb:election/force/nom_chancellor
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

execute store result bossbar syb:nom value run scoreboard players get phase_time game_data

bossbar set syb:nom name {"translate":"syb.bossbar.nom.alt","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:nom name {"translate":"syb.bossbar.nom","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}