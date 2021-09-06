#parent: combat:skill/list/_emp/request
#施放技能 空

#通知
title @s actionbar [{"text": "使用技能", "color": "light_purple", "bold": "true"}, {"text": " 空", "color": "dark_blue", "bold": "true"}]

#施放
execute if score @s CB.SK._emp.lvl matches 1 run function combat:skill/list/_emp/cast/lvl1
execute if score @s CB.SK._emp.lvl matches 2 run function combat:skill/list/_emp/cast/lvl2
execute if score @s CB.SK._emp.lvl matches 3 run function combat:skill/list/_emp/cast/lvl3

#冷卻
scoreboard players operation @s CB.SK.cur_cd = #_emp CB.SK.cur_cd
scoreboard players operation @s CB.SK.cur_pro = @s CB.SK._emp.pro
function combat:skill/call/cd_calculate

#熟練度
scoreboard players add @s CB.SK._emp.pxp 1
execute if score @s CB.SK._emp.pxp >= #increase1 CB.SK.cur_pro unless score @s CB.SK._emp.pro matches 1.. run function combat:skill/list/_emp/pro_increase
execute if score @s CB.SK._emp.pxp >= #increase2 CB.SK.cur_pro unless score @s CB.SK._emp.pro matches 2.. run function combat:skill/list/_emp/pro_increase
execute if score @s CB.SK._emp.pxp >= #increase3 CB.SK.cur_pro unless score @s CB.SK._emp.pro matches 3.. run function combat:skill/list/_emp/pro_increase
