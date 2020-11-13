tellraw @a {"translate":"syb.chat.accept_veto","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"},{"selector":"@a[tag=chancellor]"}]}

scoreboard players set action game_data 0
clear @a minecraft:totem_of_undying

scoreboard players operation phase_time game_data = veto_dur settings
bossbar set syb:veto players @a
bossbar set syb:veto visible false

schedule function syb:election/trigger/new_pres 2s