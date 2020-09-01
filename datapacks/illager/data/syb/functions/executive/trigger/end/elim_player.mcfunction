clear @a[tag=pres]

bossbar set syb:elim_player visible false
execute store result bossbar syb:elim_player value run scoreboard players get elim_dur settings

tellraw @a {"translate":"syb.chat.elim_player.done"}
schedule function syb:election/trigger/new_pres 2s