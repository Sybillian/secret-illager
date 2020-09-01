scoreboard players set action game_data 1
scoreboard players set phase game_data 1
tag @a[tag=pres] remove pres
tag @a[tag=nom_chancellor] remove nom_chancellor
tag @a[tag=chancellor] remove chancellor
tag @a[tag=picked_pres] add pres
execute if entity @a[tag=pres] run tellraw @a [{"translate":"syb.chat.new_pres","with":[{"selector":"@a[tag=pres]"}]}]
execute if entity @a[tag=pres] run schedule function syb:election/trigger/nom_chancellor 2s
execute unless entity @a[tag=pres] run tellraw @a [{"translate":"syb.chat.pres_offline"}]
execute unless entity @a[tag=pres] run schedule function syb:election/trigger/new_pres 2s

team modify display_1 prefix {"translate":"syb.scoreboard.phase.election","color":"red"}