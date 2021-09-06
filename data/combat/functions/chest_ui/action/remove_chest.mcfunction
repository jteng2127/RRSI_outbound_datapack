#parent: combat:chest_ui/loop
#移除箱子ui

fill ~ ~ ~ ^1 ^ ^ minecraft:air
execute positioned ^0.5 ^0.5 ^ run kill @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_text, distance= ..0.1]
kill @e[type= minecraft:item, nbt= {Item: {tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.open: 1b}}}]
kill @s
