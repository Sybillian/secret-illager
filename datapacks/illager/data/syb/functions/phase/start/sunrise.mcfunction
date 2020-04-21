effect clear @a minecraft:blindness
time set 23500t
title @a subtitle {"translate":"syb.subtitle.phase.sunrise"}
title @a title {"translate":"syb.title.phase.sunrise"}
bossbar set syb:timer_night players
bossbar set syb:timer_day players @a

tellraw @a {"translate":"syb.chat.day.1"}
tellraw @a {"translate":"syb.chat.day.2"}
tellraw @a {"translate":"syb.chat.day.3"}

## SET INVENTORY