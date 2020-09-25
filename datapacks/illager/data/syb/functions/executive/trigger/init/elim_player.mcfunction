tellraw @a {"translate":"syb.chat.elim_player.others","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"score":{"name":"policies_i","objective":"game_data"}},{"selector":"@a[tag=pres]"}]}
team modify display_1 prefix {"translate":"syb.scoreboard.phase.executive","color":"red","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}

scoreboard players set action game_data 0
scoreboard players set phase game_data 3
schedule function syb:executive/trigger/give_elim_heads 2s