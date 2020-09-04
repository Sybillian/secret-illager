execute store result score elim_target game_data run data get entity @a[tag=pres,limit=1] SelectedItem.tag.player_id
execute as @a if score @s id = elim_target game_data run tag @s add elim_target
execute if score @a[tag=elim_target,limit=1] role matches 1..2 run tellraw @a {"translate":"syb.chat.elim_player.done","with":[{"selector":"@a[tag=pres]"},{"selector":"@a[tag=elim_target]"}]}
execute if score @a[tag=elim_target,limit=1] role matches 3 run tellraw @a {"translate":"syb.chat.elim_player.win","with":[{"selector":"@a[tag=pres]"},{"selector":"@a[tag=elim_target]"}]}

bossbar set syb:elim_player visible false
execute store result bossbar syb:elim_player value run scoreboard players get elim_player_dur settings
scoreboard players set action game_data 0
clear @a[tag=pres]

tag @a[tag=elim_target] add dead
team join dead @a[tag=elim_target]
effect give @a[tag=elim_target] minecraft:invisibility 999999 0 true
execute at @a[tag=elim_target] run playsound minecraft:entity.player.death master @a ~ ~ ~ 1 1
execute at @a[tag=elim_target] run particle minecraft:soul ~ ~1 ~ 0.2 0.5 0.2 0 50

execute if score @a[tag=elim_target,limit=1] role matches 1..2 run schedule function syb:election/trigger/new_pres 2s
execute if score @a[tag=elim_target,limit=1] role matches 3 run schedule function syb:game/trigger/end/villager_win 2s