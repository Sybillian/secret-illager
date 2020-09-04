execute store result score investigate_target game_data run data get entity @a[tag=pres,limit=1] SelectedItem.tag.player_id
execute as @a if score @s id = investigate_target game_data run tag @s add investigate_target
tellraw @a[tag=!pres] {"translate":"syb.chat.investigate.selected.others","with":[{"selector":"@a[tag=pres]"},{"selector":"@a[tag=investigate_target]"}]}
execute as @a[tag=pres] if score @a[tag=investigate_target,limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[tag=investigate_target]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if score @a[tag=investigate_target,limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[tag=investigate_target]"},{"translate":"syb.generic.illager","color":"red"}]}

bossbar set syb:investigate visible false
execute store result bossbar syb:investigate value run scoreboard players get investigate_dur settings
scoreboard players set action game_data 0
clear @a[tag=pres]

schedule function syb:election/trigger/new_pres 2s