clear @s minecraft:carrot_on_a_stick
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{CustomModelData:7}
replaceitem entity @s[scores={role=0}] weapon.offhand minecraft:carrot_on_a_stick{CustomModelData:5,display:{Name:'{"translate":"syb.item.name.role","color":"green","bold":"false","italic":"false","with":[{"translate":"syb.generic.innocent","bold":"true"}]}',Lore:['{"translate":"syb.item.lore.role","color":"dark_green","bold":"false","italic":"false","with":[{"translate":"syb.team.name.villager","bold":"true"}]}']}}
replaceitem entity @s[scores={role=1}] weapon.offhand minecraft:carrot_on_a_stick{CustomModelData:6,display:{Name:'{"translate":"syb.item.name.role","color":"red","bold":"false","italic":"false","with":[{"translate":"syb.generic.traitor","bold":"true"}]}',Lore:['{"translate":"syb.item.lore.role","color":"dark_red","bold":"false","italic":"false","with":[{"translate":"syb.team.name.illager","bold":"true"}]}']}}