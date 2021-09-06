execute if entity @e[type= minecraft:area_effect_cloud, tag= CB.SK.do1.ray] run schedule function combat:skill/list/do1/cast/ray_s 1t append
execute as @e[type= minecraft:area_effect_cloud, tag= CB.SK.do1.ray] at @s run function combat:skill/list/do1/cast/ray
