scoreboard players operation picked_pres game_data = @a[limit=1,sort=random,tag=!pres,tag=playing,tag=!dead] id
execute as @a if score @s id = selected_pres game_data run tag @s add picked_pres
tellraw @a {"translate":"syb.chat.pick_pres.done","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"},{"selector":"@a[tag=picked_pres]"}]}

bossbar set syb:pick_pres visible false
execute store result bossbar syb:pick_pres value run scoreboard players get pick_pres_dur settings
scoreboard players set action game_data 0
clear @a[tag=pres]

tellraw @a {"translate":"syb.chat.pick_pres.done","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
schedule function syb:election/trigger/new_pres 2s