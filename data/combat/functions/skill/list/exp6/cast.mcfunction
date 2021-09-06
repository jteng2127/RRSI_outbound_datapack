#parent: combat:skill/list/exp6/request
#施放技能 範例六

#通知
title @s actionbar [{"text": "使用技能", "color": "light_purple", "bold": "true"}, {"text": " 範例六", "color": "dark_blue", "bold": "true"}]

#施放
execute if score @s CB.SK.exp6.lvl matches 1 run function combat:skill/list/exp6/cast/lvl1
execute if score @s CB.SK.exp6.lvl matches 2 run function combat:skill/list/exp6/cast/lvl2
execute if score @s CB.SK.exp6.lvl matches 3 run function combat:skill/list/exp6/cast/lvl3

#冷卻
scoreboard players operation @s CB.SK.cur_cd = #exp6 CB.SK.cur_cd
scoreboard players operation @s CB.SK.cur_pro = @s CB.SK.exp6.pro
function combat:skill/call/cd_calculate

#熟練度
scoreboard players add @s CB.SK.exp6.pxp 1
execute if score @s CB.SK.exp6.pxp >= #increase1 CB.SK.cur_pro unless score @s CB.SK.exp6.pro matches 1.. run function combat:skill/list/exp6/pro_increase
execute if score @s CB.SK.exp6.pxp >= #increase2 CB.SK.cur_pro unless score @s CB.SK.exp6.pro matches 2.. run function combat:skill/list/exp6/pro_increase
execute if score @s CB.SK.exp6.pxp >= #increase3 CB.SK.cur_pro unless score @s CB.SK.exp6.pro matches 3.. run function combat:skill/list/exp6/pro_increase
