clear @a[tag=pres]

bossbar set syb:scry visible false
execute store result bossbar syb:scry value run scoreboard players get scry_dur settings
scoreboard players set action game_data 0

tellraw @a {"translate":"syb.chat.scry.done","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
schedule function syb:election/trigger/new_pres 2s