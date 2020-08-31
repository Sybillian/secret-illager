tellraw @a [{"translate":"syb.chat.chancellor_passed","with":[{"score":{"name":"yes_votes","objective":"game_data"}},{"score":{"name":"no_votes","objective":"game_data"}}]}]
scoreboard players set phase game_data 2
scoreboard players set action game_data 0

scoreboard players set no_votes game_data 0
scoreboard players set yes_votes game_data 0
scoreboard players set nom_chancellor game_data 0
scoreboard players set fails game_data 0
scoreboard players reset * nom_vote
scoreboard players reset * used_coas

execute if score policies_i game_data matches 3.. if entity @a[tag=chancellor,scores={role=3}] run function syb:game/trigger/end/illager_win
execute if score policies_i game_data matches 3.. unless entity @a[tag=chancellor,scores={role=3}] run schedule function syb:legislative/trigger/begin_legislative 2s
execute unless score policies_i game_data matches 3.. unless entity @a[tag=chancellor,scores={role=3}] run schedule function syb:legislative/trigger/begin_legislative 2s