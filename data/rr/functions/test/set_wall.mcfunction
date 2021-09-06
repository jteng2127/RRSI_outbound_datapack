#give @s minecraft:pig_spawn_egg{EntityTag: {id: "minecraft:area_effect_cloud", Tags: ["set_wall"], Duration: 2}}
execute as @e[tag= set_wall] at @s run fill ~ 85 ~ ~ 86 ~ minecraft:cut_red_sandstone