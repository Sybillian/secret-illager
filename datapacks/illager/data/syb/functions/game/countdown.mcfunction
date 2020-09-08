title @a times 0 40 0
execute if score start_countdown game_data matches 6..10 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"green","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
execute if score start_countdown game_data matches 3..5 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"yellow","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
execute if score start_countdown game_data matches 1..2 run title @a subtitle {"translate":"syb.subtitle.countdown","color":"red","with":[{"score":{"name":"start_countdown","objective":"game_data"}}]}
title @a title {"translate":"syb.title.countdown"}
execute at @a run playsound minecraft:block.stone_button.click_on voice @a
scoreboard players remove start_countdown game_data 1
execute if score start_countdown game_data matches 1.. run schedule function syb:game/countdown 1s
execute if score start_countdown game_data matches ..0 run function syb:game/trigger/complete_start