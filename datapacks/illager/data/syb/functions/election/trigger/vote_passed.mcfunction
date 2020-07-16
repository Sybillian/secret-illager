tellraw @a [{"text":"The vote passed with "},{"score":{"name":"yes_votes","objective":"game_data"}},{"text":" votes in favor and "},{"score":{"name":"no_votes","objective":"game_data"}},{"text":" votes against."}]
scoreboard players set phase game_data 2
scoreboard players set action game_data 0

scoreboard players set no_votes game_data 0
scoreboard players set yes_votes game_data 0
scoreboard players set nom_chancellor game_data 0
scoreboard players reset * nom_vote
scoreboard players reset * used_coas