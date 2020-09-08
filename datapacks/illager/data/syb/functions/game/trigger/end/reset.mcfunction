tellraw @a {"translate":"syb.chat.end.play_again","with":[{"translate":"syb.prefix.game","color":"green","bold":"true"}]}

fill -1 22 -7 1 27 -7 minecraft:white_stained_glass_pane replace #syb:glass_panes
fill -1 22 -8 1 27 -8 minecraft:white_concrete replace #syb:concretes
fill 2 22 -6 2 27 -6 minecraft:air

scoreboard players set game_active game_data 0
scoreboard players set policies_i game_data 0
scoreboard players set policies_v game_data 0
scoreboard players set fails game_data 0
scoreboard players set phase_time game_data 0
scoreboard players set players game_data 0
scoreboard players set living_players game_data 0
scoreboard players set phase game_data 0
scoreboard players set action game_data 0
scoreboard players set nom_chancellor game_data 0
scoreboard players set no_votes game_data 0
scoreboard players set yes_votes game_data 0
scoreboard players set v_policies_inhand game_data 0
scoreboard players set i_policies_inhand game_data 0
scoreboard players set current_pres game_data 0
scoreboard players set villagers game_data 0
scoreboard players set illagers game_data 0
scoreboard players set start_countdown game_data 10
scoreboard players set investigate_target game_data 0
scoreboard players set picked_pres game_data 0
scoreboard players set elim_target game_data 0
scoreboard players set attempted_veto game_data 0

scoreboard players reset * id
scoreboard players reset * nom_vote
scoreboard players reset * used_coas
scoreboard players reset * role
team join lobby @a
tag @a remove pres
tag @a remove chancellor
tag @a remove nom_chancellor
tag @a remove discarded
tag @a remove playing
tag @a remove dead
tag @a remove illager

team modify display_5 prefix {"translate":"syb.scoreboard.villager.0","color":"green"}
team modify display_4 prefix {"translate":"syb.scoreboard.illager.0","color":"red"}
team modify display_2 prefix {"translate":"syb.scoreboard.event.none","color":"red"}
team modify display_1 prefix {"translate":"syb.scoreboard.phase.election","color":"red"}

bossbar set syb:nom visible false
bossbar set syb:vote_nom visible false
bossbar set syb:discard_policy visible false
bossbar set syb:select_policy visible false
bossbar set syb:scry visible false
bossbar set syb:investigate visible false
bossbar set syb:pick_pres visible false
bossbar set syb:elim_player visible false
bossbar set syb:veto visible false