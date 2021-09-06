# parent: combat:hotbar/loop
# 快捷技能循環指令

# 固定目前技能選取槽
execute unless score @s CB.HB.sel_slot matches 0 run scoreboard players operation @s CB.SK.cur_slot = @s CB.HB.cur_slot
execute if score @s CB.HB.sel_slot matches 0 run scoreboard players operation @s CB.HB.cur_slot = @s CB.SK.cur_slot

# 使用技能
execute unless score @s CB.HB.sel_slot matches 0 if score @s CB.HB.use matches 1.. run function combat:hotbar/action/skill_use_in_slot
