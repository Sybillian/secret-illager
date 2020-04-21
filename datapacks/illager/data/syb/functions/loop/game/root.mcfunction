# status
# 1 = choosing nom
# 2 = chosen nom, waiting for others
# 3 = voting
# 4 = cast vote, waiting for others

execute as @a[scores={reset_me=1}] run function
execute as @a[scores={status=1}] run function syb:loop/game/nominating