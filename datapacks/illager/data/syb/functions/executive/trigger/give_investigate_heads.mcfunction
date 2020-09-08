tellraw @a {"translate":"syb.chat.investigate.select","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute as @a[tag=!pres,tag=playing] run loot give @a[tag=pres] loot syb:util/player_head
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

execute store result bossbar syb:investigate max run scoreboard players get investigate_dur settings
bossbar set syb:investigate players @a
bossbar set syb:investigate visible true
scoreboard players set action game_data 2