clear @a[tag=chancellor] minecraft:carrot_on_a_stick
scoreboard players add policies_v game_data 1
scoreboard players set @a[tag=chancellor] used_coas 0
tellraw @a {"translate":"syb.chat.play_policy.villager","with":[{"selector":"@a[tag=chancellor]"}]}
schedule function syb:legislative/trigger/played_policy 2s

execute if score policies_v game_data matches 1 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.1","color":"green"}
execute if score policies_v game_data matches 2 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.2","color":"green"}
execute if score policies_v game_data matches 3 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.3","color":"green"}
execute if score policies_v game_data matches 4 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.4","color":"green"}
execute if score policies_v game_data matches 5 run team modify display_5 prefix {"translate":"syb.scoreboard.villager.5","color":"green"}

bossbar set syb:select_policy visible false

schedule function syb:election/trigger/new_pres 2s