#parent: combat:chest_ui/action/set_chest, combat:chest_ui/loop, combat:chest_ui/action/close
#放置箱子

fill ~ ~ ~ ^1 ^ ^ minecraft:air

execute if entity @s[y_rotation= 45.0..135.0] run setblock ~ ~ ~ minecraft:chest[facing= west, type= right]{LootTable: "combat:chest_ui_open", CustomName: '{"text": "選單", "color": "dark_purple", "bold": "true"}'}
execute if entity @s[y_rotation= 45.0..135.0] run setblock ^1 ^ ^ minecraft:chest[facing= west, type= left]
execute if entity @s[y_rotation= 135.0..225.0] run setblock ~ ~ ~ minecraft:chest[facing= north, type= right]{LootTable: "combat:chest_ui_open", CustomName: '{"text": "選單", "color": "dark_purple", "bold": "true"}'}
execute if entity @s[y_rotation= 135.0..225.0] run setblock ^1 ^ ^ minecraft:chest[facing= north, type= left]
execute if entity @s[y_rotation= 225.0..315.0] run setblock ~ ~ ~ minecraft:chest[facing= east, type= right]{LootTable: "combat:chest_ui_open", CustomName: '{"text": "選單", "color": "dark_purple", "bold": "true"}'}
execute if entity @s[y_rotation= 225.0..315.0] run setblock ^1 ^ ^ minecraft:chest[facing= east, type= left]
execute if entity @s[y_rotation= 315.0..45.0] run setblock ~ ~ ~ minecraft:chest[facing= south, type= right]{LootTable: "combat:chest_ui_open", CustomName: '{"text": "選單", "color": "dark_purple", "bold": "true"}'}
execute if entity @s[y_rotation= 315.0..45.0] run setblock ^1 ^ ^ minecraft:chest[facing= south, type= left]

execute positioned ^0.5 ^0.5 ^ run kill @e[type= minecraft:area_effect_cloud, tag= CB.CUI.chest_ui_text, distance= ..0.1]
summon minecraft:area_effect_cloud ^0.5 ^0.5 ^ {Duration: 2147483647, CustomName: '{"text": "選單", "color": "dark_purple", "bold": "true"}', CustomNameVisible: 1b, Tags:["CB.CUI.chest_ui_text"]}
