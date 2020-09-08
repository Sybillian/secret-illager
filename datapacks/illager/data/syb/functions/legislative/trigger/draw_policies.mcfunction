# This is incredibly stupid I don't know why I thought this was the best way of doing it
# BUT IT WORKS so don't harass me
scoreboard players add villager_policies game_data 0
scoreboard players set action game_data 1
scoreboard players operation phase_time game_data = vote_nom_dur settings
bossbar set syb:discard_policy players @a
bossbar set syb:discard_policy visible true

replaceitem block 0 1 0 container.0 minecraft:carrot_on_a_stick
data modify block 0 1 0 RecordItem set from storage game:deck Cards[0]
data remove storage game:deck Cards[0]
setblock 0 1 0 minecraft:air destroy
setblock 0 1 0 minecraft:jukebox replace

replaceitem block 0 1 0 container.0 minecraft:carrot_on_a_stick
data modify block 0 1 0 RecordItem set from storage game:deck Cards[0]
data remove storage game:deck Cards[0]
setblock 0 1 0 minecraft:air destroy
setblock 0 1 0 minecraft:jukebox replace

replaceitem block 0 1 0 container.0 minecraft:carrot_on_a_stick
data modify block 0 1 0 RecordItem set from storage game:deck Cards[0]
data remove storage game:deck Cards[0]
setblock 0 1 0 minecraft:air destroy
setblock 0 1 0 minecraft:jukebox replace

execute as @e[type=minecraft:item,nbt={Item:{tag:{policy:0}}}] run scoreboard players add v_policies_inhand game_data 1
execute as @e[type=minecraft:item,nbt={Item:{tag:{policy:1}}}] run scoreboard players add i_policies_inhand game_data 1
execute as @e[type=minecraft:item,limit=3] run data modify entity @s PickupDelay set value 0s
tp @e[type=minecraft:item,limit=3] @a[tag=pres,limit=1]

tellraw @a[tag=pres] {"translate":"syb.chat.draw_policies.pres","color":"green","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"}]}

team modify display_1 prefix {"translate":"syb.scoreboard.phase.legislative","color":"red"}