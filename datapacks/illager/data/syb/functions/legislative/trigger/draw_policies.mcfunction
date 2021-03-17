# This is incredibly stupid I don't know why I thought this was the best way of doing it
# BUT IT WORKS so don't harass me
scoreboard players set action game_data 1
scoreboard players operation phase_time game_data = discard_policy_dur settings
bossbar set syb:discard_policy players @a
bossbar set syb:discard_policy visible true

execute if data storage game:deck Cards[0].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.2 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[0].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.2 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[0].tag{policy:0} run scoreboard players add v_policies_inhand game_data 1
execute if data storage game:deck Cards[0].tag{policy:1} run scoreboard players add i_policies_inhand game_data 1

execute if data storage game:deck Cards[1].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.4 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.4 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:0} run scoreboard players add v_policies_inhand game_data 1
execute if data storage game:deck Cards[1].tag{policy:1} run scoreboard players add i_policies_inhand game_data 1

execute if data storage game:deck Cards[2].tag{policy:1} run replaceitem entity @a[tag=pres] hotbar.6 minecraft:totem_of_undying{CustomModelData:1,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:0} run replaceitem entity @a[tag=pres] hotbar.6 minecraft:totem_of_undying{CustomModelData:0,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:0} run scoreboard players add v_policies_inhand game_data 1
execute if data storage game:deck Cards[2].tag{policy:1} run scoreboard players add i_policies_inhand game_data 1

tellraw @a[tag=!pres] {"translate":"syb.chat.draw_policies.others","color":"green","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"selector":"@a[tag=pres]"},{"selector":"@a[tag=chancellor]"}]}
tellraw @a[tag=pres] {"translate":"syb.chat.draw_policies.pres","color":"green","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"}]}

team modify display_1 prefix {"translate":"syb.scoreboard.phase.legislative","color":"red"}