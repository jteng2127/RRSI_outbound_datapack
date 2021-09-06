#give @s minecraft:ghast_spawn_egg{EntityTag: {id: "minecraft:armor_stand", Tags: ["circle"], NoGravity: 1b}}
execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s run particle minecraft:totem_of_undying ^ ^2 ^9 0 1 0 0.5 0 force
execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s run particle minecraft:totem_of_undying ^ ^2 ^9 0 1 0 1 0 force
execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s run kill @a[tag= !op, distance= ..8.7]

execute as @e[type= minecraft:armor_stand, tag= circle, tag= !circle.stop] at @s positioned ~ ~1 ~ if entity @e[type= minecraft:area_effect_cloud, tag= test.f, distance= ..1.5] run tag @s add circle.stop
execute as @e[type= minecraft:armor_stand, tag= circle, tag= circle.stop] unless score @s test.c_stop matches 1.. at @s positioned ~ ~1 ~ if entity @e[type= minecraft:area_effect_cloud, tag= test.f, distance= ..1.5] run kill @e[type= minecraft:area_effect_cloud, tag= test.f, distance= ..1.5]
scoreboard players add @e[type= minecraft:armor_stand, tag= circle, tag= circle.stop] test.c_stop 1
tag @e[type= minecraft:armor_stand, tag= circle, tag= circle.stop, scores= {test.c_stop= 200..}] remove circle.stop
scoreboard players reset @e[type= minecraft:armor_stand, tag= circle, scores= {test.c_stop= 200..}] test.c_stop
