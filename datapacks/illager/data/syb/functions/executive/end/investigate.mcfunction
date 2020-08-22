clear @a[tag=pres]

bossbar set syb:investigate visible false
execute store result bossbar syb:investigate value run scoreboard players get investigate_dur settings

tellraw @a {"translate":"syb.chat.scry.done"}
schedule function syb:election/trigger/new_pres 2s