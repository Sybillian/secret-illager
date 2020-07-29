tellraw @a[tag=!pres] [{"translate":"syb.chat.sel_chancellor.others","color":"yellow","with":[{"selector":"@a[tag=pres]"}]}]
tellraw @a[tag=pres] [{"translate":"syb.chat.sel_chancellor.pres","color":"yellow","with":[{"keybind":"key.drop","font":"syb:capitalized"}]}]
execute as @a[tag=!pres,tag=playing] run loot give @a[tag=pres] loot syb:util/player_head
scoreboard players set nom_chancellor game_data 0
scoreboard players set action game_data 1