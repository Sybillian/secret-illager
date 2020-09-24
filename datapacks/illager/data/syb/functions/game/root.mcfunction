execute if score game_active game_data matches 1 run function syb:game/game_active

execute as @a unless data entity @s Inventory[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}] run function syb:game/trigger/update_caos
scoreboard players reset @a used_coas