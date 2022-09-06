
# Song of psychic stress

execute if score @s mysticdata2 matches 45..55 if entity @s[level=8..] run effect give @a[distance=0.1..15,tag=hearing] nausea 10
execute if score @s mysticdata2 matches 45..55 if entity @s[level=8..] run effect give @a[distance=0.1..15,tag=hearing] blindness 10
execute if score @s mysticdata2 matches 45..55 if entity @s[level=8..] run xp add @s -8 levels

# Song of Inspiration

execute if score @s mysticdata2 matches 60..70 if entity @s[level=12..] run effect give @a[distance=..15,tag=hearing] haste 360
execute if score @s mysticdata2 matches 60..70 if entity @s[level=12..] run effect give @a[distance=..15,tag=hearing] speed 360
execute if score @s mysticdata2 matches 60..70 if entity @s[level=12..] run effect give @a[distance=..15,tag=hearing] strength 360
execute if score @s mysticdata2 matches 60..70 if entity @s[level=12..] run xp add @s -12 levels

# Song of happy dance

execute if score @s mysticdata2 matches 80..90 if entity @s[level=5..] run effect give @a[distance=..15,tag=hearing] speed 360
execute if score @s mysticdata2 matches 80..90 if entity @s[level=5..] run effect give @a[distance=..15,tag=hearing] luck 360 2
execute if score @s mysticdata2 matches 80..90 if entity @s[level=5..] run xp add @s -5 levels

# Song of Intimidation

execute if score @s mysticdata2 matches 100..110 if entity @s[level=10..] run effect give @a[distance=0.1..15,tag=hearing] weakness 20 2
execute if score @s mysticdata2 matches 100..110 if entity @s[level=10..] run xp add @s -10 levels

# Dog flute

execute if score @s mysticdata2 matches 20..30 if entity @s[level=5..] run summon wolf ^ ^1 ^1
execute if score @s mysticdata2 matches 20..30 if entity @s[level=5..] run particle poof ^ ^1 ^1 1 1 1 0.1 5 force @a
execute if score @s mysticdata2 matches 20..30 if entity @s[level=5..] run particle portal ^ ^1 ^1 1 1 1 0.1 5 force @a
execute if score @s mysticdata2 matches 20..30 if entity @s[level=5..] run xp add @s -5 levels

# Bird Imitation

execute if score @s mysticdata2 matches 120..130 if entity @s[level=3..] run summon parrot ^ ^1 ^1
execute if score @s mysticdata2 matches 120..130 if entity @s[level=3..] run particle poof ^ ^1 ^1 1 1 1 0.1 5 force @a
execute if score @s mysticdata2 matches 120..130 if entity @s[level=3..] run particle portal ^ ^1 ^1 1 1 1 0.1 5 force @a
execute if score @s mysticdata2 matches 120..130 if entity @s[level=3..] run xp add @s -3 levels

# Reseting mysticdata2

scoreboard players reset @s mysticdata2
