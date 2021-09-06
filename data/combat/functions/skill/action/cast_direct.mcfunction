#parent: combat:action/use
#技能使用導向

#目前欄資料
execute if score @s CB.SK.cur_slot matches 1 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot1
execute if score @s CB.SK.cur_slot matches 1 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd1
execute if score @s CB.SK.cur_slot matches 2 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot2
execute if score @s CB.SK.cur_slot matches 2 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd2
execute if score @s CB.SK.cur_slot matches 3 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot3
execute if score @s CB.SK.cur_slot matches 3 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd3
execute if score @s CB.SK.cur_slot matches 4 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot4
execute if score @s CB.SK.cur_slot matches 4 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd4
execute if score @s CB.SK.cur_slot matches 5 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot5
execute if score @s CB.SK.cur_slot matches 5 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd5
execute if score @s CB.SK.cur_slot matches 6 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot6
execute if score @s CB.SK.cur_slot matches 6 run scoreboard players operation @s CB.SK.cur_cd = @s CB.SK.cd6

#導向
execute if score @s CB.SK.cur_id matches 1..10 at @s run function combat:skill/direct/1to10/cast
execute if score @s CB.SK.cur_id matches 11..20 at @s run function combat:skill/direct/11to20/cast
execute if score @s CB.SK.cur_id matches 21..30 at @s run function combat:skill/direct/21to30/cast
execute if score @s CB.SK.cur_id matches 31..40 at @s run function combat:skill/direct/31to40/cast
execute if score @s CB.SK.cur_id matches 41..50 at @s run function combat:skill/direct/41to50/cast
execute if score @s CB.SK.cur_id matches 51..60 at @s run function combat:skill/direct/51to60/cast
