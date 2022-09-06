
# Tag Managemant

tag @s add siren_singing

execute at @s run tag @e[type= player,distance=..30,nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] add hearing

execute at @s run tag @e[type= player,distance=..30,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] remove hearing

execute at @s run tag @e[type= cow,distance=..30] add hearing
execute at @s run tag @e[type= sheep,distance=..30] add hearing
execute at @s run tag @e[type= chicken,distance=..30] add hearing
execute at @s run tag @e[type= salmon,distance=..30] add hearing
execute at @s run tag @e[type= cod,distance=..30] add hearing
execute at @s run tag @e[type= panda,distance=..30] add hearing
execute at @s run tag @e[type= parrot,distance=..30] add hearing
execute at @s run tag @e[type= rabbit,distance=..30] add hearing
execute at @s run tag @e[type= villager,distance=..30] add hearing
execute at @s run tag @e[type= cat,distance=..30] add hearing
execute at @s run tag @e[type= donkey,distance=..30] add hearing
execute at @s run tag @e[type= horse,distance=..30] add hearing
execute at @s run tag @e[type= bat,distance=..30] add hearing
execute at @s run tag @e[type= bee,distance=..30] add hearing
execute at @s run tag @e[type= fox,distance=..30] add hearing 

execute at @s run tag @e[type= silverfish,distance=..30] add hearing
execute at @s run tag @e[type= slime,distance=..30] add hearing
execute at @s run tag @e[type= hoglin,distance=..30] add hearing
execute at @s run tag @e[type= blaze,distance=..30] add hearing
execute at @s run tag @e[type= magma_cube,distance=..30] add hearing
execute at @s run tag @e[type= cave_spider,distance=..30] add hearing
execute at @s run tag @e[type= spider,distance=..30] add hearing

# Playing tune

execute if score @s mysticdata matches ..0 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.0
execute if score @s mysticdata matches 15 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.6
execute if score @s mysticdata matches 30 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.0
execute if score @s mysticdata matches 45 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.7
execute if score @s mysticdata matches 60 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.6
execute if score @s mysticdata matches 75 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.9
execute if score @s mysticdata matches 76 run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 100 0.9

# Adding Motion to nearby entities with the hearing tag

execute at @s positioned ~4 ~ ~-4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[-0.4,0.2,0.4]}
execute at @s positioned ~-4 ~ ~-4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[0.4,0.2,0.4]}
execute at @s positioned ~4 ~ ~4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[-0.4,0.2,-0.4]}
execute at @s positioned ~-4 ~ ~4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[0.4,0.2,-0.4]}

execute at @s positioned ~4 ~ ~ run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[-0.4,0.2,0.0]}
execute at @s positioned ~-4 ~ ~ run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[0.4,0.2,0.0]}
execute at @s positioned ~ ~ ~-4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[0.0,0.2,0.4]}
execute at @s positioned ~ ~ ~4 run data merge entity @e[tag=hearing,limit=1,distance=..3] {Motion:[0.0,0.2,-0.4]}
