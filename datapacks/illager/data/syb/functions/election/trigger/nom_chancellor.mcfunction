tellraw @a[tag=!pres] [{"selector":"@a[tag=pres]"},{"text":" will now select a candidate for Chancellor!","color":"yellow"}]
tellraw @a[tag=pres] [{"text":"Drop the player head of the individual you want to nominate for Chancellor.","color":"yellow"}]
execute as @a[tag=!pres,tag=playing] run loot give @a[tag=pres] loot syb:util/player_head
scoreboard players set nom_chancellor game_data 0
scoreboard players set action game_data 1