clear @a[tag=chancellor] minecraft:carrot_on_a_stick
scoreboard players add policies_i game_data 1
scoreboard players set @a[tag=chancellor] used_coas 0
tellraw @a {"translate":"syb.chat.play_policy.illager","with":[{"selector":"@a[tag=chancellor]"}]}

execute if score policies_i game_data matches 1 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.1","color":"red"}
execute if score policies_i game_data matches 2 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.2","color":"red"}
execute if score policies_i game_data matches 3 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.3","color":"red"}
execute if score policies_i game_data matches 4 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.4","color":"red"}
execute if score policies_i game_data matches 5 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.5","color":"red"}
execute if score policies_i game_data matches 6 run team modify display_4 prefix {"translate":"syb.scoreboard.illager.6","color":"red"}

bossbar set syb:select_policy visible false

schedule function syb:legislative/trigger/played_policy 2s