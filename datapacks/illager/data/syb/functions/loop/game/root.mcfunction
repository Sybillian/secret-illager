# status
# 1 = choosing vote
# 2 = vote tied - secondary vote
# 3 = voting
# 4 = 

execute if score phase game_data matches 1 run function syb:loop/game/voting
# execute as @a[scores={reset_me=1}] run function