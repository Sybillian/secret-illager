tellraw @a {"translate":"syb.chat.end.roles.illagers","color":"red","bold":"true","with":[{"selector":"@a[tag=illager]","color":"reset","bold":"false"}]}
tellraw @a {"translate":"syb.chat.end.roles.nitwits","color":"green","bold":"true","with":[{"selector":"@a[tag=nitwit]","color":"reset","bold":"false"}]}
tellraw @a {"translate":"syb.chat.end.roles.golem","color":"blue","bold":"true","with":[{"selector":"@a[tag=golem]","color":"reset","bold":"false"}]}
tellraw @a {"translate":"syb.chat.end.roles.cleric","color":"light_purple","bold":"true","with":[{"selector":"@a[tag=cleric]","color":"reset","bold":"false"}]}
team add red {"translate": "syb.team.name.red"}
team add green {"translate": "syb.team.name.green"}
team add blue {"translate": "syb.team.name.blue"}
team add pink {"translate": "syb.team.name.pink"}
team modify red color red
team modify green color green
team modify blue color blue
team modify pink color light_purple
team join red @a[tag=illager]
team join green @a[tag=nitwit]
team join blue @a[tag=golem]
team join pink @a[tag=cleric]
effect give @a[tag=playing] minecraft:glowing 10 0 true