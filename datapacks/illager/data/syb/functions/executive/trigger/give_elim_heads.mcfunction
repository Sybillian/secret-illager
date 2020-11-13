tellraw @a[tag=pres] {"translate":"syb.chat.elim_player.pres","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"keybind":"key.use"}]}
execute as @a[tag=pres] run function syb:game/inv/heads
replaceitem entity @a[tag=pres] weapon.offhand minecraft:carrot_on_a_stick

scoreboard players operation phase_time game_data = elim_dur settings
execute store result bossbar syb:elim_player max run scoreboard players get elim_dur settings
bossbar set syb:elim_player players @a
bossbar set syb:elim_player visible true
scoreboard players set action game_data 4