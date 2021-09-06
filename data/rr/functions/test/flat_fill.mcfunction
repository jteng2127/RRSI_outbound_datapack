#give @s minecraft:pig_spawn_egg{EntityTag: {id: "minecraft:area_effect_cloud", Tags: ["flat_fill"], Duration: 2}}
execute as @e[tag= flat_fill, tag= !prepare] at @s positioned ~1 ~ ~ unless entity @e[distance= ..0.5] if block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["flat_fill", "prepare"], Duration: 2}
execute as @e[tag= flat_fill, tag= !prepare] at @s positioned ~-1 ~ ~ unless entity @e[distance= ..0.5] if block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["flat_fill", "prepare"], Duration: 2}
execute as @e[tag= flat_fill, tag= !prepare] at @s positioned ~ ~ ~1 unless entity @e[distance= ..0.5] if block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["flat_fill", "prepare"], Duration: 2}
execute as @e[tag= flat_fill, tag= !prepare] at @s positioned ~ ~ ~-1 unless entity @e[distance= ..0.5] if block ~ ~ ~ minecraft:air run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["flat_fill", "prepare"], Duration: 2}
execute as @e[tag= flat_fill, tag= prepare] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:podzol
tag @e[tag= flat_fill] remove prepare