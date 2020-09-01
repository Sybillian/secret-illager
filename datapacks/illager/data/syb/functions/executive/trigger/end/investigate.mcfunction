tellraw @a[tag=!pres] {"translate":"syb.chat.investigate.selected.others"}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:1}}}] if score @a[scores={id=1},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=1}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:1}}}] if score @a[scores={id=1},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=1}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:2}}}] if score @a[scores={id=2},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=2}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:2}}}] if score @a[scores={id=2},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=2}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:3}}}] if score @a[scores={id=3},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=3}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:3}}}] if score @a[scores={id=3},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=3}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:4}}}] if score @a[scores={id=4},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=4}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:4}}}] if score @a[scores={id=4},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=4}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:5}}}] if score @a[scores={id=5},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=5}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:5}}}] if score @a[scores={id=5},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=5}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:6}}}] if score @a[scores={id=6},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=6}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:6}}}] if score @a[scores={id=6},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=6}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:7}}}] if score @a[scores={id=7},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=7}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:7}}}] if score @a[scores={id=7},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=7}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:8}}}] if score @a[scores={id=8},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=8}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:8}}}] if score @a[scores={id=8},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=8}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:9}}}] if score @a[scores={id=9},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=9}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:9}}}] if score @a[scores={id=9},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=9}]"},{"translate":"syb.generic.illager","color":"red"}]}

execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:10}}}] if score @a[scores={id=10},limit=1] role matches 1 run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=10}]"},{"translate":"syb.generic.villager","color":"green"}]}
execute as @a[tag=pres] if entity @s[nbt={SelectedItem:{tag:{player_id:10}}}] if score @a[scores={id=10},limit=1] role matches 2.. run tellraw @s {"translate":"syb.chat.investigate.selected.pres","with":[{"selector":"@a[scores={id=10}]"},{"translate":"syb.generic.illager","color":"red"}]}

bossbar set syb:investigate visible false
execute store result bossbar syb:investigate value run scoreboard players get investigate_dur settings
scoreboard players set action game_data 0
clear @a[tag=pres]

tellraw @a {"translate":"syb.chat.investigate.done"}
schedule function syb:election/trigger/new_pres 2s