clear @a
execute as @a[sort=random,limit=1,tag=!pres,tag=playing,tag=!dead] unless score term_limited matches 1 run tag @s add nom_chancellor
tellraw @a [{"translate":"syb.chat.chancellor_selected","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"},{"selector":"@a[tag=pres]"},{"selector":"@a[tag=nom_chancellor]"}]}]
bossbar set syb:nom visible false
scoreboard players set action game_data 0
schedule function syb:election/trigger/vote_on_nom 2s