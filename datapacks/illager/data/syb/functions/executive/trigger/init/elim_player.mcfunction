tellraw @a {"translate":"syb.chat.elim_player","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"score":{"name":"policies_i","objective":"game_data"}},{"selector":"@a[tag=pres]"}]}
team modify display_1 prefix {"translate":"syb.scoreboard.phase.executive","color":"red","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}

schedule function syb:executive/trigger/give_elim_heads 2s