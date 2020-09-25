tellraw @a[tag=!pres] [{"translate":"syb.chat.sel_chancellor.others","color":"yellow","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"}]}]
tellraw @a[tag=pres] [{"translate":"syb.chat.sel_chancellor.pres","color":"yellow","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"keybind":"key.drop","font":"syb:capitalized"}]}]
execute as @a[tag=pres] run function syb:game/inv/heads
scoreboard players operation phase_time game_data = nom_dur settings
bossbar set syb:nom players @a
bossbar set syb:nom visible true
scoreboard players set nom_chancellor game_data 0
scoreboard players set action game_data 1