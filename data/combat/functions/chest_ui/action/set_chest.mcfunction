#parent: combat:chest_ui/loop
#設置位置標記及箱子ui

#設置標記
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 2147483647, Tags: ["CB.CUI.chest_ui_position", "CB.CUI.setting"]}
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting] at @s facing entity @a[scores= {CB.CUI.set= 1..}, sort= nearest, limit= 1] feet run tp @s ~ ~ ~ ~ ~
#角度正位
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting, y_rotation= 45.0..135.0] at @s run tp @s ~ ~ ~ 90.0 0.0
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting, y_rotation= 135.0..225.0] at @s run tp @s ~ ~ ~ 180.0 0.0
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting, y_rotation= 225.0..315.0] at @s run tp @s ~ ~ ~ -90.0 0.0
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting, y_rotation= 315.0..45.0] at @s run tp @s ~ ~ ~ 0.0 0.0

#放箱子&浮空字
execute as @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting] at @s run function combat:chest_ui/call/reset_chest

#收尾
tag @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_position, tag= CB.CUI.setting] remove CB.CUI.setting
kill @s
