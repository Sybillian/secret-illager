scoreboard players remove i_policies_inhand game_data 1
tag @s add discarded
replaceitem entity @a[tag=pres] weapon.mainhand minecraft:air
tellraw @s {"text":"You discarded an ILLAGER policy."}
bossbar set syb:discard_policy visible false
scoreboard players set @a[tag=chancellor] used_coas 0
schedule function syb:legislative/trigger/give_chancellor_policies 2s