execute store result score picked_pres game_data run data get entity @a[tag=pres,limit=1] SelectedItem.tag.player_id
execute as @a if score @s id = selected_pres game_data run tag @s add picked_pres
tellraw @a {"translate":"syb.chat.pick_pres.done","with":[{"selector":"@a[tag=pres]"},{"selector":"@a[tag=picked_pres]"}]}

bossbar set syb:pick_pres visible false
execute store result bossbar syb:pick_pres value run scoreboard players get pick_pres_dur settings
scoreboard players set action game_data 0
clear @a[tag=pres]

tellraw @a {"translate":"syb.chat.pick_pres.done"}
schedule function syb:election/trigger/new_pres 2s