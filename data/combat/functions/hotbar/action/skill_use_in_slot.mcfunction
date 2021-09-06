# parent: combat:hotbar/call/skill_loop
# 在欄位中使用技能

scoreboard players operation @s CB.SK.cur_slot = @s CB.HB.sel_slot
function combat:skill/action/cast_direct
