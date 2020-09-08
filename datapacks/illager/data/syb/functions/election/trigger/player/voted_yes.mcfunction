scoreboard players set @s nom_vote 1
scoreboard players set @s used_coas 0
tellraw @s {"translate":"syb.chat.nom.vote","with":[{"translate":"syb.prefix.whisper","bold":"true","color":"dark_gray"},{"translate":"syb.generic.yes","color":"green"}]}