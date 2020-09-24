tellraw @a[tag=!pres] {"translate":"syb.chat.scry.draw.others","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"}]}
tellraw @a[tag=pres] {"translate":"syb.chat.scry.draw.pres","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"}]}
scoreboard players operation phase_time game_data = scry_dur settings
execute store result bossbar syb:scry max run scoreboard players get scry_dur settings
bossbar set syb:scry players @a
bossbar set syb:scry visible true
scoreboard players set action game_data 1
execute if data storage game:deck Cards[0].tag{policy:0} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:2,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[0].tag{policy:1} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:3,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:0} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:2,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}
execute if data storage game:deck Cards[1].tag{policy:1} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:3,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:1} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:3,policy:1,display:{Name:'{"translate":"syb.item.name.illager_policy"}',Lore:['{"translate":"syb.item.lore.illager_policy"}']}}
execute if data storage game:deck Cards[2].tag{policy:0} run give @a[tag=pres] minecraft:carrot_on_a_stick{CustomModelData:2,policy:0,display:{Name:'{"translate":"syb.item.name.villager_policy"}',Lore:['{"translate":"syb.item.lore.villager_policy"}']}}