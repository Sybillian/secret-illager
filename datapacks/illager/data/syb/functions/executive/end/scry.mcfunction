clear @a[tag=pres]

bossbar set syb:scry visible false
execute store result bossbar syb:scry value run scoreboard players get scry_dur settings

tellraw @a {"translate":"syb.chat.scry.done"}
schedule function syb:election/trigger/new_pres 2s