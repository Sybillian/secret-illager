tag @a[tag=nom_chancellor] add chancellor
tag @a remove nom_chancellor
scoreboard players set attempted_veto game_data 0

say LEGISLATIVE BEGUN

schedule function syb:legislative/trigger/draw_policies 2s