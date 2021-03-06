tellraw @a [{"translate":"syb.chat.chancellor_passed","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"score":{"name":"yes_votes","objective":"game_data"}},{"score":{"name":"no_votes","objective":"game_data"}}]}]
scoreboard players set phase game_data 2
scoreboard players set action game_data 0

scoreboard players set no_votes game_data 0
scoreboard players set yes_votes game_data 0
scoreboard players set nom_chancellor game_data 0
scoreboard players set fails game_data 0
scoreboard players reset * nom_vote
scoreboard players reset * used_coas

scoreboard players reset * term_limited
scoreboard players set @a[tag=chancellor] term_limited 1
scoreboard players operation current_chancellor game_data = @a[tag=chancellor] id

execute if score policies_i game_data matches 3.. if entity @a[tag=chancellor,scores={role=3}] run schedule function syb:game/trigger/end/illager_win 2s
execute if score policies_i game_data matches 3.. unless entity @a[tag=chancellor,scores={role=3}] run schedule function syb:legislative/trigger/begin_legislative 2s
execute unless score policies_i game_data matches 3.. unless entity @a[tag=chancellor,scores={role=3}] run schedule function syb:legislative/trigger/begin_legislative 2s