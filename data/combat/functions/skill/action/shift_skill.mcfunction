#parent: combat:action/shift_hit
#切換技能

#切換
scoreboard players add @s CB.SK.cur_slot 1
#是否有配技能, 無則繼續找
execute if score @s CB.SK.cur_slot matches 1 unless score @s CB.SK.slot1 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 2 unless score @s CB.SK.slot2 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 3 unless score @s CB.SK.slot3 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 4 unless score @s CB.SK.slot4 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 5 unless score @s CB.SK.slot5 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 6 unless score @s CB.SK.slot6 matches 1.. run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s CB.SK.cur_slot matches 7.. run scoreboard players set @s CB.SK.cur_slot 1

#通知
function combat:skill/call/select_announce_direct
