###
# Run by the game when the datapack is reloaded. Initializes scoreboard
# objectives and ensures that the datapack is properly configured.
###

## World setup
difficulty peaceful
time set 6000t
defaultgamemode adventure
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 0
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false

## Scoreboards and settings
scoreboard objectives add used_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add math dummy
scoreboard objectives add settings dummy
scoreboard objectives add game_data dummy
scoreboard objectives add reset_me dummy
scoreboard objectives add id dummy
scoreboard objectives add nom_vote dummy
scoreboard objectives add role dummy
scoreboard objectives add display dummy {"translate": "syb.scoreboard.title","color":"dark_red","bold":"true"}

scoreboard players set 100000 math 100000
scoreboard players set 10000 math 10000
scoreboard players set 1200 math 1200
scoreboard players set 1000 math 1000
scoreboard players set 100 math 100
scoreboard players set 20 math 20
scoreboard players set 10 math 10

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

scoreboard players set nom_dur settings 2400

## Display
team add display_10
team add display_9
team add display_8
team add display_7
team add display_6
team add display_5
team add display_4
team add display_3
team add display_2
team add display_1
team add display_0
team join display_10 §r§r§r§r§r§r§r§r§r§r§r
team join display_9 §r§r§r§r§r§r§r§r§r§r
team join display_8 §r§r§r§r§r§r§r§r§r
team join display_7 §r§r§r§r§r§r§r§r
team join display_6 §r§r§r§r§r§r§r
team join display_5 §r§r§r§r§r§r
team join display_4 §r§r§r§r§r
team join display_3 §r§r§r§r
team join display_2 §r§r§r
team join display_1 §r§r
team join display_0 §r
scoreboard players reset §r§r§r§r§r§r§r§r§r§r§r display
scoreboard players reset §r§r§r§r§r§r§r§r§r§r display
scoreboard players reset §r§r§r§r§r§r§r§r§r display
scoreboard players reset §r§r§r§r§r§r§r§r display
scoreboard players set §r§r§r§r§r§r§r display 6
scoreboard players set §r§r§r§r§r§r display 5
scoreboard players set §r§r§r§r§r display 4
scoreboard players set §r§r§r§r display 3
scoreboard players set §r§r§r display 2
scoreboard players set §r§r display 1
scoreboard players set §r display 0
team modify display_10 prefix ""
team modify display_9 prefix ""
team modify display_8 prefix ""
team modify display_7 prefix ""
team modify display_6 prefix ""
team modify display_5 prefix {"translate":"syb.scoreboard.villager.0","color":"green"}
team modify display_4 prefix {"translate":"syb.scoreboard.illager.0","color":"red"}
team modify display_3 prefix ""
team modify display_2 prefix {"translate":"syb.scoreboard.event.0","color":"red"}
team modify display_1 prefix {"translate":"syb.scoreboard.phase.0","color":"red"}
team modify display_0 prefix ""

## Teams
team add living {"translate": "syb.team.name.living"}
team modify living color yellow
team modify living friendlyFire false
team modify living seeFriendlyInvisibles false
team modify living nametagVisibility hideForOwnTeam
team modify living collisionRule never

team add dead {"translate": "syb.team.name.dead"}
team modify dead color gray
team modify dead prefix {"translate":"syb.team.prefix.dead","color":"gray"}

team add spec {"translate": "syb.team.name.spec"}
team modify spec color dark_gray
team modify spec prefix {"translate":"syb.team.prefix.spec","color":"gray"}

team add lobby {"translate": "syb.team.name.lobby"}
team modify lobby color white

## Bossbars
bossbar add syb:vote_nom {"translate":"syb.bossbar.vote_nom","color":"dark_aqua"}
bossbar set syb:vote_nom color blue
execute store result bossbar syb:vote_nom max run scoreboard players get nom_dur settings

# bossbar add syb:timer_night {"translate":"syb.bossbar.timer_night","color":"dark_purple"}
# bossbar set syb:timer_night color purple
# execute store result bossbar syb:timer_night max run scoreboard players get night_dur settings


## DEV STUFF
execute if score dev_mode game_data matches 1 run function syb:admin/dev_mode