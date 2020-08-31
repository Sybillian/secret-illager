tellraw @a {"translate": "syb.chat.end.roles.villager","color":"green","with":[{"selector":"@a[scores={role=1}]"}]}
tellraw @a {"translate": "syb.chat.end.roles.illager","color":"red","with":[{"selector":"@a[scores={role=2}]"}]}
tellraw @a {"translate": "syb.chat.end.roles.arch_illager","color":"dark_red","with":[{"selector":"@a[scores={role=3}]"}]}

team join villager @a[scores={role=1}]
team join illager @a[scores={role=2}]
team join arch_illager @a[scores={role=3}]
effect give @a minecraft:glowing 5 0 true

schedule function syb:game/trigger/end/reset 5s