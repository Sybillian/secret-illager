effect give @a minecraft:blindness 11 0 true
title @a subtitle {"translate": "syb.subtitle.game.titlecard"}
title @a title {"translate": "syb.title.game.titlecard"}
clear @a

scoreboard players set * reset_me 1
scoreboard players set @a reset_me 0
scoreboard players reset @a id

execute as @a[tag=playing] run scoreboard players add players game_data 1
execute if score players game_data matches 1.. run scoreboard players set 1 alive 1
execute if score players game_data matches 2.. run scoreboard players set 2 alive 1
execute if score players game_data matches 3.. run scoreboard players set 3 alive 1
execute if score players game_data matches 4.. run scoreboard players set 4 alive 1
execute if score players game_data matches 5.. run scoreboard players set 5 alive 1
execute if score players game_data matches 6.. run scoreboard players set 6 alive 1
execute if score players game_data matches 7.. run scoreboard players set 7 alive 1
execute if score players game_data matches 8.. run scoreboard players set 8 alive 1
execute if score players game_data matches 9.. run scoreboard players set 9 alive 1
execute if score players game_data matches 10.. run scoreboard players set 10 alive 1
execute if score players game_data matches 11.. run scoreboard players set 11 alive 1

scoreboard players set @a[tag=playing] id 0
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 1
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 2
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 3
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 4
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 5
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 6
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 7
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 8
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 9
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 10
scoreboard players set @a[scores={id=0},sort=random,limit=1] id 11

tag @a[limit=2,sort=random,tag=playing,tag=!illager] add illager
tag @a[tag=playing,tag=!illager] add villager
tag @a[limit=1,sort=random,tag=playing,tag=villager] add golem
tag @a[limit=1,sort=random,tag=playing,tag=villager,tag=!golem] add cleric
tag @a[tag=playing,tag=villager,tag=!golem,tag=!cleric] add nitwit
execute as @a[tag=playing] run function syb:game/start/set_scores

schedule function syb:game/start/assign_roles 5s