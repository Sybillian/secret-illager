scoreboard players set @a used_coas 0

tellraw @a {"translate":"syb.chat.vote_on_chancellor","color":"white","with":[{"keybind":"key.use"},{"translate":"syb.generic.checkmark","color":"green"},{"translate":"syb.generic.x","color":"red"}]}
replaceitem entity @a hotbar.3 minecraft:carrot_on_a_stick{custom_item:"vote_yes",CustomModelData:0,display:{Name:'{"translate":"syb.item.vote.yes"}'}}
replaceitem entity @a hotbar.5 minecraft:carrot_on_a_stick{custom_item:"vote_no",CustomModelData:1,display:{Name:'{"translate":"syb.item.vote.no"}'}}

scoreboard players operation phase_time game_data = nom_dur settings