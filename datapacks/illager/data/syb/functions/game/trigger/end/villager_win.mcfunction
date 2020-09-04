title @s times 10 50 10
title @a subtitle {"translate":"syb.subtitle.end.villager_win","color":"yellow"}
title @a[scores={role=1}] title {"translate":"syb.title.end.win","color":"green"}
title @a[scores={role=2..3}] title {"translate":"syb.title.end.lose","color":"red"}

execute if score policies_v game_data matches 5 run tellraw @a {"translate":"syb.chat.end.villager_win.policies"}
execute if score policies_v game_data matches ..4 run tellraw @a {"translate":"syb.chat.end.villager_win.elim"}

schedule function syb:game/trigger/end/reveal_roles 3s