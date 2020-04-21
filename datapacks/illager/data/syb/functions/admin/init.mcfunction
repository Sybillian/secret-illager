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
scoreboard objectives add id dummy
scoreboard objectives add status dummy
scoreboard objectives add nom_id dummy
scoreboard objectives add alive dummy
scoreboard objectives add reset_me dummy

scoreboard players set 100000 math 100000
scoreboard players set 10000 math 10000
scoreboard players set 1000 math 1000
scoreboard players set 100 math 100
scoreboard players set 10 math 10

scoreboard players set active game_data 0
scoreboard players set phase game_data 0
scoreboard players set day game_data 0
scoreboard players set players game_data 0
scoreboard players set living game_data 0
scoreboard players set dead game_data 0
scoreboard players set illagers game_data 0
scoreboard players set civilians game_data 0
scoreboard players set golem_alive game_data 0
scoreboard players set cleric_alive game_data 0

scoreboard players set day_dur settings 2400
scoreboard players set night_dur settings 2400

## Teams
team add living {"translate": "syb.team.name.living"}
team modify living color yellow
team modify living friendlyFire false
team modify living seeFriendlyInvisibles false
team modify living nametagVisibility hideForOwnTeam
team modify living collisionRule never

team add dead {"translate": "syb.team.name.dead"}
team modify dead color gray
team modify dead prefix "☠ "

team add spec {"translate": "syb.team.name.spec"}
team modify spec color dark_gray
team modify spec prefix {"text":"[SPEC] ","color":"gray"}

team add lobby {"translate": "syb.team.name.lobby"}
team modify lobby color white

team remove red
team remove green
team remove blue
team remove pink

## Bossbars
bossbar add syb:timer_day {"translate":"syb.bossbar.timer_day","color":"yellow"}
bossbar add syb:timer_night {"translate":"syb.bossbar.timer_night","color":"dark_purple"}
execute store result bossbar syb:timer_day max run scoreboard players get day_dur settings
execute store result bossbar syb:timer_night max run scoreboard players get night_dur settings
bossbar set syb:timer_day color yellow
bossbar set syb:timer_night color purple


## DEV STUFF
execute if score dev_mode game_data matches 1 run function syb:admin/dev_mode