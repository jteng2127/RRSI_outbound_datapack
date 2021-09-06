#parent: combat:skill/action/shift_skill
#技能選取通知

#目前欄資料
execute if score @s CB.SK.cur_slot matches 1 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot1
execute if score @s CB.SK.cur_slot matches 2 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot2
execute if score @s CB.SK.cur_slot matches 3 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot3
execute if score @s CB.SK.cur_slot matches 4 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot4
execute if score @s CB.SK.cur_slot matches 5 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot5
execute if score @s CB.SK.cur_slot matches 6 run scoreboard players operation @s CB.SK.cur_id = @s CB.SK.slot6

#導向
execute if score @s CB.SK.cur_id matches 1..10 run function combat:skill/direct/1to10/select_announce
execute if score @s CB.SK.cur_id matches 11..20 run function combat:skill/direct/11to20/select_announce
execute if score @s CB.SK.cur_id matches 21..30 run function combat:skill/direct/21to30/select_announce
execute if score @s CB.SK.cur_id matches 31..40 run function combat:skill/direct/31to40/select_announce
execute if score @s CB.SK.cur_id matches 41..50 run function combat:skill/direct/41to50/select_announce
execute if score @s CB.SK.cur_id matches 51..60 run function combat:skill/direct/51to60/select_announce
