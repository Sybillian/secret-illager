tellraw @a {"translate":"syb.chat.pick_pres.select","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute as @a[tag=!pres,tag=playing,tag=!dead] run loot give @a[tag=pres] loot syb:util/player_head
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

execute store result bossbar syb:elim_player max run scoreboard players get elim_dur settings
bossbar set syb:elim_player players @a
bossbar set syb:elim_player visible true
scoreboard players set action game_data 4