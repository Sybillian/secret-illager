scoreboard players set action game_data 3
clear @a

execute as @a if score @s nom_vote matches 0 run tellraw @a [{"selector":"@a[scores={id=1}]"},{"text":" voted NO.","color":"red"}]
execute as @a if score @s nom_vote matches 1 run tellraw @a [{"selector":"@a[scores={id=1}]"},{"text":" voted YES.","color":"green"}]
execute as @a unless score @s nom_vote matches 0..1 run tellraw @a [{"selector":"@a[scores={id=1}]"},{"text":" voted YES","color":"green"},{"text":" (abstained)","color":"gray"}]

execute as @a[scores={nom_vote=0}] run scoreboard players add no_votes game_data 1
execute as @a[scores={nom_vote=1}] run scoreboard players add yes_votes game_data 1

execute if score yes_votes game_data > no_votes game_data run schedule function syb:election/trigger/vote_passed 2s
execute if score yes_votes game_data <= no_votes game_data run schedule function syb:election/trigger/vote_failed 2s