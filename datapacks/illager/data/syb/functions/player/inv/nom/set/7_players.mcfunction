replaceitem entity @s inventory.0 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.1 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.2 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
execute if score 1 alive matches 1 run loot replace entity @s inventory.3 kill @a[scores={id=1},limit=1]
execute if score 2 alive matches 1 run loot replace entity @s inventory.4 kill @a[scores={id=2},limit=1]
execute if score 3 alive matches 1 run loot replace entity @s inventory.5 kill @a[scores={id=3},limit=1]
execute if score 1 alive matches 0 run replaceitem entity @s inventory.3 minecraft:barrier
execute if score 2 alive matches 0 run replaceitem entity @s inventory.4 minecraft:barrier
execute if score 3 alive matches 0 run replaceitem entity @s inventory.5 minecraft:barrier
replaceitem entity @s inventory.6 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.7 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.8 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.9 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.10 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.11 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
execute if score 4 alive matches 1 run loot replace entity @s inventory.12 kill @a[scores={id=4},limit=1]
execute if score 5 alive matches 1 run loot replace entity @s inventory.13 kill @a[scores={id=5},limit=1]
execute if score 6 alive matches 1 run loot replace entity @s inventory.14 kill @a[scores={id=6},limit=1]
execute if score 4 alive matches 0 run replaceitem entity @s inventory.12 minecraft:barrier
execute if score 5 alive matches 0 run replaceitem entity @s inventory.13 minecraft:barrier
execute if score 6 alive matches 0 run replaceitem entity @s inventory.14 minecraft:barrier
replaceitem entity @s inventory.15 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.16 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.17 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.18 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.19 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.20 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.21 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
execute if score 7 alive matches 1 run loot replace entity @s inventory.22 kill @a[scores={id=7},limit=1]
execute if score 7 alive matches 0 run replaceitem entity @s inventory.22 minecraft:barrier
replaceitem entity @s inventory.23 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.24 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.25 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}
replaceitem entity @s inventory.26 minecraft:carrot_on_a_stick{CustomModelData:0,display:{Name:'{"text":""}'}}