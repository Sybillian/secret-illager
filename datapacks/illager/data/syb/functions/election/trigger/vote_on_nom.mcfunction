scoreboard players set @a used_coas 0

tellraw @a {"translate":"syb.chat.vote_on_chancellor","color":"white","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"keybind":"key.use"},{"translate":"syb.generic.checkmark","color":"green"},{"translate":"syb.generic.x","color":"red"}]}
replaceitem entity @a hotbar.3 minecraft:carrot_on_a_stick{custom_item:"vote_yes",CustomModelData:0,display:{Name:'{"translate":"syb.item.vote.yes"}'}}
replaceitem entity @a hotbar.5 minecraft:carrot_on_a_stick{custom_item:"vote_no",CustomModelData:1,display:{Name:'{"translate":"syb.item.vote.no"}'}}

scoreboard players operation phase_time game_data = vote_nom_dur settings
bossbar set syb:vote_nom players @a
bossbar set syb:vote_nom visible true

scoreboard players set action game_data 2