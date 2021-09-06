# parent: combat:loop
# 快捷欄系統循環指令

# 取得目前選取欄
execute as @a store result score @s CB.HB.sel_slot run data get entity @s SelectedItemSlot

# 技能欄循環指令
execute as @a[scores= {CB.HB.skill_on= 1}] run function combat:hotbar/call/skill_loop

# 記分板運算
scoreboard players set @a CB.HB.use 0
