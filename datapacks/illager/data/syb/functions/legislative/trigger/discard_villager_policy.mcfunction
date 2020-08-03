scoreboard players remove v_policies_inhand game_data 1
clear @a[tag=pres] minecraft:carrot_on_a_stick{policy:0} 1
tellraw @s {"text":"You discarded a VILLAGER policy."}
schedule function syb:legislative/trigger/give_chancellor_policies 2s