function syb:game/trigger/update_caos
clear @s minecraft:totem_of_undying
kill @e[type=minecraft:item]
execute if data storage game:deck Cards[0].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.2 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[0].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.2 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.4 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.4 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.6 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.6 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}