clear @a[tag=pres]

bossbar set syb:pick_pres visible false
execute store result bossbar syb:pick_pres value run scoreboard players get pick_pres_dur settings

tellraw @a {"translate":"syb.chat.scry.done"}
schedule function syb:election/trigger/new_pres 2s