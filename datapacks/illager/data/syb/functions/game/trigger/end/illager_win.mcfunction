title @s times 10 50 10
title @a subtitle {"translate":"syb.subtitle.illager_win","color":"yellow"}
title @a[scores={role=1}] title {"translate":"syb.title.end.lose","color":"red"}
title @a[scores={role=2..3}] title {"translate":"syb.title.end.win","color":"green"}

execute if score policies_i game_data matches 6 run tellraw @a {"translate":"syb.chat.end.illager_win.policies"}
execute if score policies_i game_data matches ..5 run tellraw @a {"translate":"syb.chat.end.illager_win.election"}

schedule function syb:game/trigger/end/reveal_roles 3s