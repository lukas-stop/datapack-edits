execute unless score #creatorloggedin mysticdata matches 1 run tellraw @a[name="Bluestone_Bot"] [{"text": "Hello ","color": "yellow"}, {"text": "Bluestone_Bot","color": "aqua"}, {"text": ", this server has the Mystic Origins datapack version: ","color": "yellow"}, {"score": {"name": "#version","objective": "mysticdata"}, "color": "light_purple"}]
execute unless score #creatorloggedin mysticdata matches 1 run tellraw @a[name="Bluestone_Bot"] [{"text": "Total runtime since version 00.12.00 until current version: ","color": "yellow"}, {"score": {"name": "#pre_day","objective": "mysticdata"}, "color": "gray"}, {"text": ":","color": "white"},{"score": {"name": "#pre_hour","objective": "mysticdata"}, "color": "gray"}, {"text": ":","color": "white"}, {"score": {"name": "#pre_minute","objective": "mysticdata"},"color": "gray"}, {"text": ":","color": "white"}, {"score": {"name": "#pre_second","objective": "mysticdata"},"color": "gray"}]
execute unless score #creatorloggedin mysticdata matches 1 run tellraw @a[name="Bluestone_Bot"] [{"text": "Runtime since current version: ","color": "yellow"}, {"score": {"name": "#day","objective": "mysticdata"}, "color": "gray"}, {"text": ":","color": "white"},{"score": {"name": "#hour","objective": "mysticdata"}, "color": "gray"}, {"text": ":","color": "white"}, {"score": {"name": "#minute","objective": "mysticdata"},"color": "gray"}, {"text": ":","color": "white"}, {"score": {"name": "#second","objective": "mysticdata"},"color": "gray"}]
execute unless score #creatorloggedin mysticdata matches 1 run tellraw @a[name="Bluestone_Bot"] [{"text": "[Disable this message being shown after every login.]","color": "red","clickEvent": {"action": "run_command","value": "/scoreboard players set #creator_always_welcome_msg mysticdata 1"}}]
execute unless score #creatorloggedin mysticdata matches 1 run tellraw @a[name="Bluestone_Bot"] [{"text": "[Enable this message being shown after every login.]","color": "green","clickEvent": {"action": "run_command","value": "/scoreboard players set #creator_always_welcome_msg mysticdata 0"}}]
execute unless score #creator_always_welcome_msg mysticdata matches 1 unless entity @r[name="Blluestone_Bot"] run scoreboard players set #creatorloggedin mysticdata 0
execute if entity @r[name="Bluestone_Bot"] run scoreboard players set #creatorloggedin mysticdata 1

# Updating the runtime.

scoreboard players set #performance mysticdata 0
scoreboard players add #tick mysticdata 1
execute unless score #permformance mysticdata matches 1 if score #tick mysticdata matches 20 run scoreboard players add #second mysticdata 1
execute unless score #permformance mysticdata matches 1 if score #tick mysticdata matches 20 run scoreboard players reset #tick mysticdata
execute unless score #permformance mysticdata matches 1 if score #second mysticdata matches 60 run scoreboard players add #minute mysticdata 1
execute unless score #permformance mysticdata matches 1 if score #second mysticdata matches 60 run scoreboard players reset #second mysticdata
execute unless score #permformance mysticdata matches 1 if score #minute mysticdata matches 60 run scoreboard players add #hour mysticdata 1
execute unless score #permformance mysticdata matches 1 if score #minute mysticdata matches 60 run scoreboard players reset #minute mysticdata
execute unless score #permformance mysticdata matches 1 if score #hour mysticdata matches 24 run scoreboard players add #day mysticdata 1
execute unless score #permformance mysticdata matches 1 if score #hour mysticdata matches 24 run scoreboard players reset #hour mysticdata

# Siren handling

scoreboard players add @a[tag=siren_singing] mysticdata 1
execute as @a[tag=siren_singing] unless score @s mysticdata matches ..0 run execute as @s at @s run function mysticorigins:siren/siren_sing
execute as @a[tag=siren_singing,scores={mysticdata=77}] run scoreboard players set @s mysticdata 0
execute as @a[tag=siren_singing,scores={mysticdata=..0}] run tag @s remove siren_singing

# Wendigo hunting ground handeling

execute at @e[type=marker,tag=huntground] run effect give @a[tag=wendigo,distance=..100] strength 5 1 true
execute at @e[type=marker,tag=huntground] run effect give @a[tag=wendigo,distance=..100] speed 5 0 true

execute at @e[type=marker,tag=huntground] run title @a[distance=..100,tag=!wendigo,tag=beast] actionbar {"text":"You are within the hunting ground of a Wendigo","color":"red","italic": false}

# Handeling of who can hear effects

function mysticorigins:hearing
