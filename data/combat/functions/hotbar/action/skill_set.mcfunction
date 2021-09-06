# parent:
# 玩家啟動快捷技能

# 設定記分板
scoreboard players set @s CB.HB.skill_on 1

# 預備容器
setblock ~ 255 ~ minecraft:shulker_box

# 	武器
execute if score @s CB.HB.weapon matches 1 positioned ~ 255 ~ run function combat:get_weapon/example
# execute if score @s CB.HB.weapon matches 2 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 3 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 4 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 5 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 6 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 7 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 8 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 9 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 10 positioned ~ 255 ~ run function combat:get_weapon/
# execute if score @s CB.HB.weapon matches 11 positioned ~ 255 ~ run function combat:get_weapon/
execute positioned ~ 255 ~ run data modify block ~ ~ ~ Items append from entity @e[type= minecraft:item, limit= 1, sort= nearest] Item
execute positioned ~ 255 ~ run kill @e[type= minecraft:item, limit= 1, sort= nearest]

# 	技能
data modify block ~ 255 ~ Items append value {Slot: 1b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能1"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}
data modify block ~ 255 ~ Items append value {Slot: 2b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能2"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}
data modify block ~ 255 ~ Items append value {Slot: 3b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能3"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}
data modify block ~ 255 ~ Items append value {Slot: 4b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能4"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}
data modify block ~ 255 ~ Items append value {Slot: 5b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能5"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}
data modify block ~ 255 ~ Items append value {Slot: 6b, id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {Unbreakable: 1b, HideFlags: 4, display: {Name: '[{"text": "技能6"}]', Lore: ['']}, Enchantments: [{id: "minecraft:fortune", lvl: 1}]}}

# 收尾
loot replace entity @s hotbar.0 7 mine ~ 255 ~ minecraft:stick{CB.get_shulker_box_item: 1}
setblock ~ 255 ~ minecraft:air
