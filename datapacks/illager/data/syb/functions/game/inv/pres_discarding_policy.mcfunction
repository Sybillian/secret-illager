function syb:game/trigger/update_caos
execute if data storage game:deck Cards[0].tag{policy:0} run give @a[tag=pres] minecraft:leather{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[0].tag{policy:1} run give @a[tag=pres] minecraft:leather{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:0} run give @a[tag=pres] minecraft:leather{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:1} run give @a[tag=pres] minecraft:leather{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:1} run give @a[tag=pres] minecraft:leather{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:0} run give @a[tag=pres] minecraft:leather{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}