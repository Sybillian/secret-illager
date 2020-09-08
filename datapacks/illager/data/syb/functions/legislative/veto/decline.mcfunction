tellraw @a {"translate":"syb.chat.decline_veto","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"},{"selector":"@a[tag=chancellor]"}]}

scoreboard players set attempted_veto game_data 1
scoreboard players set action game_data 0

scoreboard players operation phase_time game_data = veto_dur settings
bossbar set syb:veto players @a
bossbar set syb:veto visible false

schedule function syb:legislative/give_chancellor_policies 2s