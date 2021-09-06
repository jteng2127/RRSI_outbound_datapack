#parent: combat:loop
#箱子ui循環指令

#放置箱子ui
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.set_chest_ui] at @s run function combat:chest_ui/action/set_chest
scoreboard players reset @a CB.CUI.set

#移除箱子ui
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position] at @s unless block ~ ~ ~ minecraft:chest run function combat:chest_ui/action/remove_chest
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position] at @s unless block ^1 ^ ^ minecraft:chest run function combat:chest_ui/action/remove_chest
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position] at @s unless block ~ ~1 ~ minecraft:air run function combat:chest_ui/action/remove_chest

#開箱 箱子初始化
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position] at @s if block ~ ~ ~ minecraft:chest{Items: [{tag: {CB.CUI.OPT.open: 1b}}]} run function combat:chest_ui/action/open
scoreboard players reset @a CB.CUI.open

#選單動作
execute as @e[scores= {CB.CUI.opening= 1}, type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position] at @s run function combat:chest_ui/action/detect
