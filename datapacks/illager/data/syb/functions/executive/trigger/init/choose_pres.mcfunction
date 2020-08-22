tellraw @a {"translate":"syb.chat.choose_pres","with":[{"score":{"name":"policies_i","objective":"game_data"}},{"selector":"@a[tag=pres]"}]}
team modify display_1 prefix {"translate":"syb.scoreboard.phase.executive","color":"red"}

schedule function syb:executive/trigger/give_pres_heads 2s