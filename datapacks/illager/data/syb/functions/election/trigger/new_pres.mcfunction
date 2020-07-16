tag @a[tag=pres] remove pres
scoreboard players add current_pres game_data 1
execute if score players game_data < current_pres game_data run scoreboard players set current_pres game_data 1
execute as @a if score @s id = current_pres game_data run tag @s add pres
execute if entity @a[tag=pres] run tellraw @a [{"selector":"@a[tag=pres]"},{"text":" is now the President!"}]
execute if entity @a[tag=pres] run schedule function syb:election/trigger/nom_chancellor 2s
execute unless entity @a[tag=pres] run tellraw @a [{"text":"The player that would have been President is offline. Skipping..."}]
execute unless entity @a[tag=pres] run schedule function syb:election/trigger/new_pres 2s