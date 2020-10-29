title @a times 0 40 0

execute store result bossbar syb:intro value run scoreboard players get start_countdown game_data
execute if score start_countdown game_data matches 7..10 run bossbar set syb:intro color blue
execute if score start_countdown game_data matches 3..6 run bossbar set syb:intro color green
execute if score start_countdown game_data matches 0..2 run bossbar set syb:intro color pink
execute if score start_countdown game_data matches 7..10 run bossbar set syb:intro name {"translate":"syb.bossbar.intro.2","color":"white","with":[{"translate":"syb.generic.sybillian","color":"aqua"}]}
execute if score start_countdown game_data matches 3..6 run bossbar set syb:intro name {"translate":"syb.bossbar.intro.1","color":"white","with":[{"translate":"syb.generic.gwc","color":"green"}]}
execute if score start_countdown game_data matches 0..2 run bossbar set syb:intro name {"translate":"syb.bossbar.intro.0","color":"white","with":[{"translate":"syb.generic.kaddaschatzi","color":"light_purple"}]}
bossbar set syb:intro visible true
bossbar set syb:intro players @a

execute if score start_countdown game_data matches 6..10 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"green","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
execute if score start_countdown game_data matches 3..5 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"yellow","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
execute if score start_countdown game_data matches 1..2 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"red","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
title @a title {"translate":"syb.title.countdown"}
execute at @a run playsound minecraft:block.stone_button.click_on voice @a
execute if score start_countdown game_data matches 1.. run schedule function syb:game/countdown 1s
execute if score start_countdown game_data matches ..0 run function syb:game/trigger/complete_start
scoreboard players remove start_countdown game_data 1