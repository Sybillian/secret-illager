execute as @a[tag=nitwit] run title @s subtitle {"translate":"syb.subtitle.role.nitwit"}
execute as @a[tag=illager] run title @s subtitle {"translate":"syb.subtitle.role.illager"}
execute as @a[tag=golem] run title @s subtitle {"translate":"syb.subtitle.role.golem"}
execute as @a[tag=cleric] run title @s subtitle {"translate":"syb.subtitle.role.cleric"}
execute as @a[tag=nitwit] run title @s title {"translate":"syb.title.role.nitwit"}
execute as @a[tag=illager] run title @s title {"translate":"syb.title.role.illager"}
execute as @a[tag=golem] run title @s title {"translate":"syb.title.role.golem"}
execute as @a[tag=cleric] run title @s title {"translate":"syb.title.role.cleric"}

execute as @a[tag=illager] at @s run loot replace entity @s hotbar.7 loot syb:util/illager_item
replaceitem entity @a[tag=villager] hotbar.7 minecraft:carrot_on_a_stick{CustomModelData:6,display:{Name:'{"translate":"syb.item.team.villager"}',Lore:['{"translate":"syb.lore.team.villager.1"}','{"translate":"syb.lore.team.villager.2"}','{"text":" "}','{"translate":"syb.lore.team.villager.3"}','{"translate":"syb.lore.team.villager.4"}','{"translate":"syb.lore.team.villager.5"}','{"translate":"syb.lore.team.villager.6"}','{"translate":"syb.lore.team.villager.7"}']}}

replaceitem entity @a[tag=nitwit] hotbar.8 minecraft:carrot_on_a_stick{CustomModelData:1,display:{Name:'{"translate":"syb.item.role.nitwit"}',Lore:['{"translate":"syb.lore.role.nitwit.1"}','{"translate":"syb.lore.role.nitwit.2"}','{"translate":"syb.lore.role.nitwit.3"}','{"translate":"syb.lore.role.nitwit.4"}','{"translate":"syb.lore.role.nitwit.5"}']}}
replaceitem entity @a[tag=illager] hotbar.8 minecraft:carrot_on_a_stick{CustomModelData:2,display:{Name:'{"translate":"syb.item.role.illager"}',Lore:['{"translate":"syb.lore.role.illager.1"}','{"translate":"syb.lore.role.illager.2"}','{"translate":"syb.lore.role.illager.3"}','{"translate":"syb.lore.role.illager.4"}','{"translate":"syb.lore.role.illager.5"}','{"text":" "}','{"translate":"syb.lore.role.illager.6"}','{"translate":"syb.lore.role.illager.7"}','{"translate":"syb.lore.role.illager.8"}','{"translate":"syb.lore.role.illager.9"}']}}
replaceitem entity @a[tag=golem] hotbar.8 minecraft:carrot_on_a_stick{CustomModelData:3,display:{Name:'{"translate":"syb.item.role.golem"}',Lore:['{"translate":"syb.lore.role.golem.1"}','{"translate":"syb.lore.role.golem.2"}','{"translate":"syb.lore.role.golem.3"}','{"text":" "}','{"translate":"syb.lore.role.golem.4"}','{"translate":"syb.lore.role.golem.5"}','{"translate":"syb.lore.role.golem.6"}']}}
replaceitem entity @a[tag=cleric] hotbar.8 minecraft:carrot_on_a_stick{CustomModelData:4,display:{Name:'{"translate":"syb.item.role.cleric"}',Lore:['{"translate":"syb.lore.role.cleric.1"}','{"translate":"syb.lore.role.cleric.2"}','{"text":" "}','{"translate":"syb.lore.role.cleric.3"}','{"translate":"syb.lore.role.cleric.4"}','{"translate":"syb.lore.role.cleric.5"}']}}