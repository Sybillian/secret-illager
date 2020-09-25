scoreboard players set @s inv_changed 0
clear @s minecraft:player_head
data remove storage syb:heads permanent
data remove storage syb:heads temporary
execute as @a[tag=!pres,tag=playing,tag=!dead] run loot give @a[tag=pres] loot syb:util/player_head
data modify storage syb:heads permanent insert 0 from entity @s Inventory[]
function syb:game/trigger/update_caos