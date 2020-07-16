clear @a
kill @e[type=minecraft:item]
execute as @a if score @s id = nom_chancellor game_data run tag @s add nom_chancellor
tellraw @a [{"selector":"@a[tag=pres]"},{"text":" has nominated "},{"selector":"@a[tag=nom_chancellor]"},{"text":" as Chancellor!"}]
schedule function syb:election/trigger/vote_on_nom 2s
scoreboard players set action game_data 2