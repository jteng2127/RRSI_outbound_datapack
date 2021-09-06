#parent: combat:skill/list/do1/request
#施放技能 冰封

#通知
title @s actionbar [{"text": "使用技能", "color": "light_purple", "bold": "true"}, {"text": " 冰封", "color": "dark_blue", "bold": "true"}]

#施放
summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 30, Tags: ["CB.SK.do1.ray", "CB.SK.do1.ready"]}
execute anchored eyes run tp @e[type= minecraft:area_effect_cloud, tag= CB.SK.do1.ray, tag= CB.SK.do1.ready] ^ ^ ^2 ~ ~
execute as @e[type= minecraft:area_effect_cloud, tag= CB.SK.do1.ray, tag= CB.SK.do1.ready] at @s run function combat:skill/list/do1/cast/ray_s
tag @e[type= minecraft:area_effect_cloud, tag= CB.SK.do1.ray, tag= CB.SK.do1.ready] remove CB.SK.do1.ready

#冷卻
scoreboard players operation @s CB.SK.cur_cd = #do1 CB.SK.cur_cd
scoreboard players set @s CB.SK.cur_pro 0
function combat:skill/call/cd_calculate
