tellraw @a {"translate":"syb.chat.pick_pres.select","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute as @a[tag=!pres,tag=playing,tag=!dead] run loot give @a[tag=pres] loot syb:util/player_head
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

execute store result bossbar syb:pick_pres max run scoreboard players get pick_pres_dur settings
bossbar set syb:pick_pres players @a
bossbar set syb:pick_pres visible true
scoreboard players set action game_data 3