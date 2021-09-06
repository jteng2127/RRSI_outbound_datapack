#parent: combat:skill/cast_direct
#技能導向 編號1~10 使用

execute if score @s CB.SK.cur_id matches 1 run function combat:skill/list/exp1/request
execute if score @s CB.SK.cur_id matches 2 run function combat:skill/list/exp2/request
execute if score @s CB.SK.cur_id matches 3 run function combat:skill/list/exp3/request
execute if score @s CB.SK.cur_id matches 4 run function combat:skill/list/exp4/request
execute if score @s CB.SK.cur_id matches 5 run function combat:skill/list/exp5/request
execute if score @s CB.SK.cur_id matches 6 run function combat:skill/list/exp6/request
#execute if score @s CB.SK.cur_id matches 7 run function combat:skill/list/_empty/request
#execute if score @s CB.SK.cur_id matches 8 run function combat:skill/list/_empty/request
#execute if score @s CB.SK.cur_id matches 9 run function combat:skill/list/_empty/request
#execute if score @s CB.SK.cur_id matches 10 run function combat:skill/list/_empty/request
