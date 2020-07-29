tellraw @a [{"translate":"syb.chat.chancellor_failed","with":[{"score":{"name":"yes_votes","objective":"game_data"}},{"score":{"name":"no_votes","objective":"game_data"}}]}]
scoreboard players set action game_data 0

scoreboard players set no_votes game_data 0
scoreboard players set yes_votes game_data 0
scoreboard players set nom_chancellor game_data 0
scoreboard players reset * nom_vote
scoreboard players reset * used_coas

scoreboard players add fails game_data 1
execute if score fails game_data matches 3 run function syb:election/trigger/force_policy
execute unless score fails game_data matches 3 run function syb:election/trigger/new_pres