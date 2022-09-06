
execute if entity @s[x_rotation=69.6..75.4] run title @s actionbar {"text":"2 F#/Gb","color":"gray"}
execute if entity @s[x_rotation=63.6..69.4] run title @s actionbar {"text":"1 G","color":"gray"}
execute if entity @s[x_rotation=57.6..63.4] run title @s actionbar {"text":"6 G#/Ab","color":"gray"}
execute if entity @s[x_rotation=51.6..57.4] run title @s actionbar {"text":"7 A","color":"gray"}
execute if entity @s[x_rotation=45.6..51.4] run title @s actionbar {"text":"8 A#/B","color":"gray"}
execute if entity @s[x_rotation=39.6..45.4] run title @s actionbar {"text":"9 H","color":"gray"}

execute if entity @s[x_rotation=33.6..39.4] run title @s actionbar {"text":"10 C","color":"gray"}
execute if entity @s[x_rotation=27.6..34.4] run title @s actionbar {"text":"1 C#/Db","color":"gray"}
execute if entity @s[x_rotation=21.6..27.4] run title @s actionbar {"text":"12 D","color":"gray"}
execute if entity @s[x_rotation=15.6..21.4] run title @s actionbar {"text":"11 D#/Eb","color":"gray"}
execute if entity @s[x_rotation=09.6..15.4] run title @s actionbar {"text":"8 E","color":"gray"}
execute if entity @s[x_rotation=03.6..09.4] run title @s actionbar {"text":"9 F","color":"gray"}

execute if entity @s[x_rotation=-03.6..03.4] run title @s actionbar {"text":"10 F#/Gb","color":"gray"}

execute if entity @s[x_rotation=-09.4..-03.6] run title @s actionbar {"text":"9 G","color":"gray"}
execute if entity @s[x_rotation=-15.4..-09.6] run title @s actionbar {"text":"8 G#/Ab","color":"gray"}
execute if entity @s[x_rotation=-21.4..-15.6] run title @s actionbar {"text":"11 A","color":"gray"}
execute if entity @s[x_rotation=-27.4..-21.6] run title @s actionbar {"text":"12 A#/B","color":"gray"}
execute if entity @s[x_rotation=-33.4..-27.6] run title @s actionbar {"text":"1 H","color":"gray"}
execute if entity @s[x_rotation=-39.4..-33.6] run title @s actionbar {"text":"10 10 C","color":"gray"}

execute if entity @s[x_rotation=-45.4..-39.6] run title @s actionbar {"text":"9 C#/Db","color":"gray"}
execute if entity @s[x_rotation=-51.4..-45.6] run title @s actionbar {"text":"8 D","color":"gray"}
execute if entity @s[x_rotation=-57.4..-51.6] run title @s actionbar {"text":"7 D#/Eb","color":"gray"}
execute if entity @s[x_rotation=-63.4..-57.6] run title @s actionbar {"text":"6 E","color":"gray"}
execute if entity @s[x_rotation=-69.4..-63.6] run title @s actionbar {"text":"1 F","color":"gray"}
execute if entity @s[x_rotation=-75.4..-69.6] run title @s actionbar {"text":"2 F#/Gb","color":"gray"}

# showing total

title @s title {"text":" ","color": "gray"}
title @s subtitle {"score":{"name":"*","objective":"mysticdata2"},"color": "light_gray"}

execute at @s run tag @e[type= player,distance=..30,nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] add hearing

execute at @s run tag @e[type= player,distance=..30,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] remove hearing
