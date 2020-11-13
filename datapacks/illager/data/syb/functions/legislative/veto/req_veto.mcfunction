clear @a[tag=chancellor] minecraft:totem_of_undying
scoreboard players set @a[tag=chancellor] used_coas 0
tellraw @a {"translate":"syb.chat.requested_veto","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=chancellor]"}]}

replaceitem entity @a[tag=pres] hotbar.3 minecraft:totem_of_undying{CustomModelData:3,veto_action:1,display:{Name:'{"translate":"syb.item.name.accept_veto","color":"red","italic":"false"}',Lore:['{"translate":"syb.item.lore.accept_veto.0","color":"white","italic":"false"}','{"translate":"syb.item.lore.accept_veto.1","color":"white","italic":"false"}','{"translate":"syb.item.lore.accept_veto.2","color":"white","italic":"false"}','{"translate":"syb.item.lore.accept_veto.3","color":"white","italic":"false"}','{"text":""}','{"translate":"syb.generic.public_action","color":"red","italic":"false","bold":"true"}']}}
replaceitem entity @a[tag=pres] hotbar.5 minecraft:totem_of_undying{CustomModelData:4,veto_action:2,display:{Name:'{"translate":"syb.item.name.decline_veto","color":"red","italic":"false"}',Lore:['{"translate":"syb.item.lore.decline_veto.0","color":"white","italic":"false"}','{"translate":"syb.item.lore.decline_veto.1","color":"white","italic":"false"}','{"translate":"syb.item.lore.decline_veto.2","color":"white","italic":"false"}','{"text":""}','{"translate":"syb.generic.public_action","color":"red","italic":"false","bold":"true"}']}}

bossbar set syb:select_policy visible false

scoreboard players operation phase_time game_data = veto_dur settings
bossbar set syb:veto players @a
bossbar set syb:veto visible true

scoreboard players set action game_data 3

## BUG
#schedule function syb:legislative/trigger/played_policy 2s