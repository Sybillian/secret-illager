execute as @a if entity @s[nbt={SelectedItem:{tag:{custom_item:vote_yes}}},scores={used_coas=1..}] run function syb:election/trigger/player/voted_yes
execute as @a if entity @s[nbt={SelectedItem:{tag:{custom_item:vote_no}}},scores={used_coas=1..}] run function syb:election/trigger/player/voted_no
execute as @a if entity @s[nbt={SelectedItem:{tag:{custom_item:lock_vote}}},scores={used_coas=1..}] run function syb:election/trigger/player/locked_vote

execute as @a[tag=playing,tag=!dead,tag=!locked] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{custom_item:"vote_yes"}},{Slot:5b,tag:{custom_item:"vote_no"}}]}] run function syb:game/inv/vote_on_nom
execute as @a[tag=playing,tag=!dead,tag=!locked] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{custom_item:"vote_yes"}},{Slot:5b,tag:{custom_item:"vote_no"}},{Slot:8b,tag:{custom_item:"lock_vote"}}]}] run function syb:game/inv/vote_on_nom_lock

execute if score phase_time game_data matches 0 run function syb:election/trigger/vote_finished
execute unless entity @a[tag=!locked] run function syb:election/trigger/vote_finished
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

execute store result bossbar syb:vote_nom value run scoreboard players get phase_time game_data

bossbar set syb:vote_nom name {"translate":"syb.bossbar.vote_nom.alt","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}
bossbar set syb:vote_nom name {"translate":"syb.bossbar.vote_nom","color":"dark_aqua","with":[{"score":{"name":"min_below_10","objective":"math"}},{"score":{"name":"time_minutes","objective":"math"}},{"score":{"name":"sec_below_10","objective":"math"}},{"score":{"name":"time_seconds","objective":"math"}}]}