scoreboard players set @a used_coas 0

tellraw @a {"text":"Right-click while holding the Y or X item to vote on whether this is an acceptable government."}
replaceitem entity @a hotbar.0 minecraft:carrot_on_a_stick{custom_item:"vote_yes",CustomModelData:1}
replaceitem entity @a hotbar.1 minecraft:carrot_on_a_stick{custom_item:"vote_no",CustomModelData:2}

scoreboard players operation phase_time game_data = nom_dur settings