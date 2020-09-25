execute if score phase game_data matches 1 run function syb:election/root
execute if score phase game_data matches 2 run function syb:legislative/root
execute if score phase game_data matches 3 run function syb:executive/root

# execute as @a[scores={inv=3}] unless entity @s run function syb:game/inv/pres_discarding_policy
# execute as @a[scores={inv=4}] unless entity @s run function syb:game/inv/chancellor_choosing_policy
# execute as @a[scores={inv=5}] unless entity @s run function syb:game/inv/potential_veto
# execute as @a[scores={inv=6}] unless entity @s run function syb:game/inv/scry