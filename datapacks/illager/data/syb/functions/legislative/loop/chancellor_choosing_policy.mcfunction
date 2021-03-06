execute as @a if entity @s[tag=!discarded,nbt={SelectedItem:{tag:{policy:0}}},scores={used_coas=1..}] run function syb:legislative/trigger/play_villager_policy
execute as @a if entity @s[tag=!discarded,nbt={SelectedItem:{tag:{policy:1}}},scores={used_coas=1..}] run function syb:legislative/trigger/play_illager_policy
execute as @a if entity @s[tag=!discarded,nbt={SelectedItem:{tag:{veto_action:0}}},scores={used_coas=1..}] run function syb:legislative/veto/req_veto

execute if score policies_i game_data matches ..4 as @a[tag=chancellor] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:totem_of_undying"},{Slot:5b,id:"minecraft:totem_of_undying"}]}] run function syb:game/inv/chancellor_choosing_policy
execute if score policies_i game_data matches 5.. unless score attempted_veto game_data matches 1 as @a[tag=chancellor] unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:totem_of_undying"},{Slot:5b,id:"minecraft:totem_of_undying"},{Slot:8b,id:"minecraft:totem_of_undying"}]}] run function syb:game/inv/chancellor_choosing_policy

execute if score phase_time game_data matches 0 run function syb:legislative/force/chancellor_choosing_policy
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

execute store result bossbar syb:select_policy value run scoreboard players get phase_time game_data

bossbar set syb:select_policy name {"translate":"syb.bossbar.select_policy.alt","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:select_policy name {"translate":"syb.bossbar.select_policy","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}