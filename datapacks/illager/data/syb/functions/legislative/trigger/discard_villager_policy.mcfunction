scoreboard players remove v_policies_inhand game_data 1
tag @s add discarded
replaceitem entity @a[tag=pres] weapon.mainhand minecraft:air
tellraw @s {"translate":"syb.chat.discard.villager","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"translate":"syb.generic.villager","font":"syb:capitalized","color":"green"}]}
bossbar set syb:discard_policy visible false
scoreboard players set @a used_coas 0
schedule function syb:legislative/trigger/give_chancellor_policies 2s