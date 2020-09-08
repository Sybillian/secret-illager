scoreboard players set action game_data 3
bossbar set syb:vote_nom visible false
clear @a

execute as @a if score @s nom_vote matches 0 run tellraw @a [{"translate":"syb.chat.vote_result","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@s[scores={id=1..}]","color":"reset"},{"translate":"syb.generic.no","color":"red"}]}]
execute as @a if score @s nom_vote matches 1 run tellraw @a [{"translate":"syb.chat.vote_result","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@s[scores={id=1..}]","color":"reset"},{"translate":"syb.generic.yes","color":"green"}]}]
execute as @a unless score @s nom_vote matches 0..1 run tellraw @a [{"translate":"syb.chat.vote_result","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@s[scores={id=1..}]","color":"reset"},{"translate":"syb.generic.yes","color":"green"},{"translate":"syb.chat.vote_result.abstain","color":"gray"}]}]

execute as @a[scores={nom_vote=0}] run scoreboard players add no_votes game_data 1
execute as @a[scores={nom_vote=1}] run scoreboard players add yes_votes game_data 1

execute if score yes_votes game_data > no_votes game_data run schedule function syb:election/trigger/vote_passed 2s
execute if score yes_votes game_data <= no_votes game_data run schedule function syb:election/trigger/vote_failed 2s