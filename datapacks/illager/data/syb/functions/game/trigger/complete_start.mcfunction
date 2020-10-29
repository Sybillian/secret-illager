tag @a add playing
scoreboard players set @a term_limited 0
scoreboard players set @a role 0
scoreboard players set players game_data 0
scoreboard players set players game_data 5
#execute as @a run scoreboard players add players game_data 1
#execute if score players game_data matches ..4 run function syb:game/trigger/cannot_start

execute if score players game_data matches 5..6 run clone 2 22 -9 2 27 -9 2 22 -6
execute if score players game_data matches 7..8 run clone 2 22 -11 2 27 -11 2 22 -6
execute if score players game_data matches 9..10 run clone 2 22 -13 2 27 -13 2 22 -6

# Set player roles
execute if score players game_data matches 5 run scoreboard players set @a[sort=random,limit=3,scores={role=0}] role 1
execute if score players game_data matches 6..7 run scoreboard players set @a[sort=random,limit=4,scores={role=0}] role 1
execute if score players game_data matches 8..9 run scoreboard players set @a[sort=random,limit=5,scores={role=0}] role 1
execute if score players game_data matches 10 run scoreboard players set @a[sort=random,limit=6,scores={role=0}] role 1
execute if score players game_data matches 5..6 run scoreboard players set @a[sort=random,limit=1,scores={role=0}] role 2
execute if score players game_data matches 7..8 run scoreboard players set @a[sort=random,limit=2,scores={role=0}] role 2
execute if score players game_data matches 9..10 run scoreboard players set @a[sort=random,limit=3,scores={role=0}] role 2
scoreboard players set @a[sort=random,limit=1,scores={role=0}] role 3

execute as @a[scores={role=1}] run scoreboard players add villagers game_data 1
execute as @a[scores={role=2}] run scoreboard players add illagers game_data 1

tellraw @a [{"translate":"syb.chat.playercount.villagers","color":"green","with":[{"score":{"name":"villagers","objective":"game_data"}}]}]
tellraw @a [{"translate":"syb.chat.playercount.illagers","color":"red","with":[{"score":{"name":"illagers","objective":"game_data"}}]}]

title @a[scores={role=1}] subtitle [{"translate":"syb.subtitle.role.villager"}]
title @a[scores={role=1}] title [{"translate":"syb.title.role.villager"}]

title @a[scores={role=2}] subtitle [{"translate":"syb.subtitle.role.illager"}]
title @a[scores={role=2}] title [{"translate":"syb.title.role.illager"}]

title @a[scores={role=3}] subtitle [{"translate":"syb.subtitle.role.arch_illager"}]
title @a[scores={role=3}] title [{"translate":"syb.title.role.arch_illager"}]

# Set player IDs
## Yes this is dumb but it works don't @ me
scoreboard players set @a id 0
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 1
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 2
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 3
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 4
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 5
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 6
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 7
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 8
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 9
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 10

execute if score players game_data matches 5 run tellraw @a [{"translate":"syb.chat.turn_order.5","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"}]}]
execute if score players game_data matches 6 run tellraw @a [{"translate":"syb.chat.turn_order.6","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"},{"selector":"@a[scores={id=6}]"}]}]
execute if score players game_data matches 7 run tellraw @a [{"translate":"syb.chat.turn_order.7","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"},{"selector":"@a[scores={id=6}]"},{"selector":"@a[scores={id=7}]"}]}]
execute if score players game_data matches 8 run tellraw @a [{"translate":"syb.chat.turn_order.8","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"},{"selector":"@a[scores={id=6}]"},{"selector":"@a[scores={id=7}]"},{"selector":"@a[scores={id=8}]"}]}]
execute if score players game_data matches 9 run tellraw @a [{"translate":"syb.chat.turn_order.9","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"},{"selector":"@a[scores={id=6}]"},{"selector":"@a[scores={id=7}]"},{"selector":"@a[scores={id=8}]"},{"selector":"@a[scores={id=9}]"}]}]
execute if score players game_data matches 10 run tellraw @a [{"translate":"syb.chat.turn_order.10","with":[{"translate":"syb.prefix.game","bold":"true","color":"green"},{"selector":"@a[scores={id=1}]"},{"selector":"@a[scores={id=2}]"},{"selector":"@a[scores={id=3}]"},{"selector":"@a[scores={id=4}]"},{"selector":"@a[scores={id=5}]"},{"selector":"@a[scores={id=6}]"},{"selector":"@a[scores={id=7}]"},{"selector":"@a[scores={id=8}]"},{"selector":"@a[scores={id=9}]"},{"selector":"@a[scores={id=10}]"}]}]
team join living @a

# Build deck
data remove storage game:deck Cards
loot spawn 0 1 0 loot syb:util/deck
execute as @e[type=minecraft:item,sort=random,limit=17] run data modify storage game:deck Cards append from entity @s Item
kill @e[type=minecraft:item]

# Set settings
execute store result bossbar syb:nom max run scoreboard players get nom_dur settings
execute store result bossbar syb:vote_nom max run scoreboard players get vote_nom_dur settings
execute store result bossbar syb:discard_policy max run scoreboard players get discard_policy_dur settings
execute store result bossbar syb:select_policy max run scoreboard players get select_policy_dur settings
execute store result bossbar syb:scry max run scoreboard players get scry_dur settings
execute store result bossbar syb:investigate max run scoreboard players get investigate_dur settings
execute store result bossbar syb:pick_pres max run scoreboard players get pick_pres_dur settings
execute store result bossbar syb:elim_player max run scoreboard players get elim_dur settings

scoreboard objectives setdisplay sidebar display
bossbar set syb:intro visible false
scoreboard players set game_active game_data 1
function syb:election/trigger/new_pres