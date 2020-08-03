data remove storage game:deck Cards
loot spawn 0 1 0 loot syb:util/deck
execute as @e[type=minecraft:item,sort=random,limit=17] run data modify storage game:deck Cards append from entity @s Item

kill @e[type=minecraft:item]