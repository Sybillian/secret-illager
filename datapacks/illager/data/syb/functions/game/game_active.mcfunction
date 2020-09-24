execute if score phase game_data matches 1 run function syb:election/root
execute if score phase game_data matches 2 run function syb:legislative/root
execute if score phase game_data matches 3 run function syb:executive/root

execute as @a[scores={inv=1}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{custom_item:"vote_yes"}},{Slot:5b,tag:{custom_item:"vote_no"}}]}] run function syb:game/inv/vote_nom