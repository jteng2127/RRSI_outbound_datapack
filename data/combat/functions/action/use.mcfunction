#parent: combat:loop
#右鍵 導向

#使用技能導向
execute if data entity @s SelectedItem.tag.skill_useable run function combat:skill/action/cast_direct
