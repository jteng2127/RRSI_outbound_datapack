#parent: combat:loop
#Shift+Q鍵 導向

#還玩家物品
setblock ~ 255 ~ minecraft:shulker_box
execute positioned ~ ~1.32 ~ run data modify block ~ 255 ~ Items append from entity @e[type= minecraft:item, limit= 1, sort= nearest] Item
execute if data entity @s SelectedItem run loot give @s mine ~ 255 ~ minecraft:stick{CB.get_shulker_box_item: 1}
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand 1 mine ~ 255 ~ minecraft:stick{CB.get_shulker_box_item: 1}
kill @e[type= minecraft:item, limit= 1, sort= nearest]
setblock ~ 255 ~ minecraft:air

#冰封技能
execute if data entity @s SelectedItem.tag.skill_useable run function combat:skill/list/do2/request
