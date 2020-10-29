execute as @a if entity @s[nbt={SelectedItem:{tag:{veto_action:1}}},scores={used_coas=1..}] run function syb:legislative/veto/accept
execute as @a if entity @s[nbt={SelectedItem:{tag:{veto_action:2}}},scores={used_coas=1..}] run function syb:legislative/veto/decline

execute if score phase_time game_data matches 0 run function function syb:legislative/veto/accept
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

execute store result bossbar syb:veto value run scoreboard players get phase_time game_data

bossbar set syb:veto name {"translate":"syb.bossbar.veto.alt","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:veto name {"translate":"syb.bossbar.veto","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}