tellraw @a {"translate":"syb.chat.investigate.select","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}
execute as @a[tag=pres] run function syb:game/inv/heads
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

scoreboard players operation phase_time game_data = investigate_dur settings
execute store result bossbar syb:investigate max run scoreboard players get investigate_dur settings
bossbar set syb:investigate players @a
bossbar set syb:investigate visible true
scoreboard players set action game_data 2