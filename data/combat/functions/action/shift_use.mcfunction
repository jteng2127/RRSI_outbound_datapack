#parent: combat:loop
#Shift+右鍵 導向

#使用下個冷卻完成的技能
execute if data entity @s SelectedItem.tag.skill_useable run function combat:skill/action/shift_cast
