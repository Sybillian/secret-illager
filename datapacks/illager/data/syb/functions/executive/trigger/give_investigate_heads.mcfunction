tellraw @a {"translate":"syb.chat.investigate.select"}
execute as @a[tag=!pres,tag=playing] run loot give @a[tag=pres] loot syb:util/player_head

execute store result bossbar syb:investigate max run scoreboard players get investigate_dur settings
bossbar set syb:investigate players @a
bossbar set syb:investigate visible true
scoreboard players set action game_data 2