tellraw @a {"translate":"syb.chat.pick_pres.select","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute as @a[tag=pres] run function syb:game/inv/heads
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

scoreboard players operation phase_time game_data = pick_pres_dur settings
execute store result bossbar syb:pick_pres max run scoreboard players get pick_pres_dur settings
bossbar set syb:pick_pres players @a
bossbar set syb:pick_pres visible true
scoreboard players set action game_data 3