execute if score i_policies_inhand game_data matches 1.. run scoreboard players remove i_policies_inhand game_data 1
execute unless score i_policies_inhand game_data matches 1.. run scoreboard players remove v_policies_inhand game_data 1
tag @a[tag=pres] add discarded
execute if score i_policies_inhand game_data matches 1.. run clear @a[tag=pres] minecraft:totem_of_undying{tag:{policy:1}} 1
execute unless score i_policies_inhand game_data matches 1.. run clear @a[tag=pres] minecraft:totem_of_undying{tag:{policy:0}} 1
tellraw @a[tag=pres] {"translate":"syb.chat.discard.villager","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"translate":"syb.generic.villager","font":"syb:capitalized","color":"green"}]}
bossbar set syb:discard_policy visible false
scoreboard players set @a used_coas 0
schedule function syb:legislative/trigger/give_chancellor_policies 2s