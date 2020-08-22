tellraw @a {"translate":"syb.chat.pick_pres.select"}
execute as @a[tag=!pres,tag=playing,tag=!dead] run loot give @a[tag=pres] loot syb:util/player_head

execute store result bossbar syb:pick_pres max run scoreboard players get pick_pres_dur settings
bossbar set syb:pick_pres players @a
bossbar set syb:pick_pres visible true
scoreboard players set action game_data 3