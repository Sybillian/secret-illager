execute if score phase game_data matches 1 run function syb:election/root
execute if score phase game_data matches 2 run function syb:legislative/root
execute if score phase game_data matches 3 run function syb:executive/root

# execute as @a[scores={inv=1}] unless entity @s run function syb:game/inv/nom_chancellor
execute as @a[scores={inv=2}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{custom_item:"vote_yes"}},{Slot:5b,tag:{custom_item:"vote_no"}}]}] run function syb:game/inv/vote_on_nom
execute as @a[scores={inv=3}] unless entity @s[nbt={Inventory:[{Slot:3b,tag:{custom_item:"vote_yes"}},{Slot:5b,tag:{custom_item:"vote_no"}},{Slot:8b,tag:{custom_item:"lock_vote"}}]}] run function syb:game/inv/vote_on_nom_lock
# execute as @a[scores={inv=4}] unless entity @s run function syb:game/inv/pres_discarding_policy
# execute as @a[scores={inv=5}] unless entity @s run function syb:game/inv/chancellor_choosing_policy
# execute as @a[scores={inv=6}] unless entity @s run function syb:game/inv/potential_vetoE
# execute as @a[scores={inv=7}] unless entity @s run function syb:game/inv/scry
# execute as @a[scores={inv=8}] unless entity @s run function syb:game/inv/investigate
# execute as @a[scores={inv=9}] unless entity @s run function syb:game/inv/pick_pres
# execute as @a[scores={inv=10}] unless entity @s run function syb:game/inv/elim_player