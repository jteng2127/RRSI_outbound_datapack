execute as @a[scores= {test.use= 1..}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 30, Tags: ["test.f", "test.f_ready"]}
execute as @a[scores= {test.use= 1..}] at @s anchored eyes run tp @e[type= minecraft:area_effect_cloud, tag= test.f_ready] ^ ^ ^1 ~ ~
tag @e[type= minecraft:area_effect_cloud, tag= test.f_ready] remove test.f_ready
execute as @e[type= minecraft:area_effect_cloud, tag= test.f] at @s run tp @s ^ ^ ^1
execute at @e[type= minecraft:area_effect_cloud, tag= test.f] run particle minecraft:dragon_breath ~ ~ ~ 0.05 0.05 0.05 0.03 5 force
scoreboard players reset @a test.use
