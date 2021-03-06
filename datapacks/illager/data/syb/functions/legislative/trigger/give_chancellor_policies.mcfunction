clear @a[tag=pres]
tag @a[tag=pres] remove discarded
scoreboard players set @a[tag=pres] used_coas 0

tellraw @a[tag=chancellor] {"translate":"syb.chat.received_policies","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"selector":"@a[tag=pres]"}]}

data remove storage game:deck Cards[2]
data remove storage game:deck Cards[1]
data remove storage game:deck Cards[0]
execute unless data storage game:deck Cards[2] run function syb:legislative/trigger/rebuild_deck

execute if score v_policies_inhand game_data matches 1 run replaceitem entity @a[tag=chancellor] hotbar.3 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}} 1
execute if score v_policies_inhand game_data matches 2 run replaceitem entity @a[tag=chancellor] hotbar.3 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}} 1
execute if score v_policies_inhand game_data matches 2 run replaceitem entity @a[tag=chancellor] hotbar.5 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}} 1

execute if score i_policies_inhand game_data matches 1 run replaceitem entity @a[tag=chancellor] hotbar.5 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}} 1
execute if score i_policies_inhand game_data matches 2 run replaceitem entity @a[tag=chancellor] hotbar.3 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}} 1
execute if score i_policies_inhand game_data matches 2 run replaceitem entity @a[tag=chancellor] hotbar.5 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}} 1

execute if score policies_i game_data matches 5.. unless score attempted_veto game_data matches 1 run replaceitem entity @a[tag=chancellor] hotbar.8 minecraft:totem_of_undying{CustomModelData:2,veto_action:0,display:{Name:'{"translate":"syb.item.name.req_veto","color":"red","italic":"false"}',Lore:['{"translate":"syb.item.lore.req_veto.0","color":"white","italic":"false"}','{"translate":"syb.item.lore.req_veto.1","color":"white","italic":"false"}','{"translate":"syb.item.lore.req_veto.2","color":"white","italic":"false"}','{"translate":"syb.item.lore.req_veto.3","color":"white","italic":"false"}','{"text":""}','{"translate":"syb.generic.public_action","color":"red","italic":"false","bold":"true"}']}} 1
scoreboard players set action game_data 2
bossbar set syb:select_policy players @a
bossbar set syb:select_policy visible true