#parent: combat:action/shift_use
#直接使用下個冷卻完成的技能

#紀錄
scoreboard players operation #cur_slot CB.SK.cur_slot = @s CB.SK.cur_slot

#是否有配技能, 無則繼續找
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 1 if score @s CB.SK.slot1 matches 1.. unless score @s CB.SK.cd1 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 1 run scoreboard players add @s CB.SK.cur_slot 1

execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 2 if score @s CB.SK.slot2 matches 1.. unless score @s CB.SK.cd2 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 2 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 3 if score @s CB.SK.slot3 matches 1.. unless score @s CB.SK.cd3 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 3 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 4 if score @s CB.SK.slot4 matches 1.. unless score @s CB.SK.cd4 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 4 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 5 if score @s CB.SK.slot5 matches 1.. unless score @s CB.SK.cd5 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 5 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 6 if score @s CB.SK.slot6 matches 1.. unless score @s CB.SK.cd6 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 6 run scoreboard players set @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 1 if score @s CB.SK.slot1 matches 1.. unless score @s CB.SK.cd1 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 1 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 2 if score @s CB.SK.slot2 matches 1.. unless score @s CB.SK.cd2 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 2 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 3 if score @s CB.SK.slot3 matches 1.. unless score @s CB.SK.cd3 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 3 run scoreboard players add @s CB.SK.cur_slot 1
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 4 if score @s CB.SK.slot4 matches 1.. unless score @s CB.SK.cd4 matches 1.. run tag @s add shift_cast_success
execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 4 run scoreboard players add @s CB.SK.cur_slot 1

execute if score @s[tag= !shift_cast_success] CB.SK.cur_slot matches 5 if score @s CB.SK.slot5 matches 1.. unless score @s CB.SK.cd5 matches 1.. run tag @s add shift_cast_success

#使用
execute as @s[tag= shift_cast_success] run function combat:skill/action/cast_direct

#若無成功, 則通知並回復
title @s[tag= !shift_cast_success] actionbar {"text": "施放失敗: 所有技能皆在冷卻中! ", "color": "dark_red", "bold": "true"}
scoreboard players operation @s[tag= !shift_cast_success] CB.SK.cur_slot = #cur_slot CB.SK.cur_slot

tag @s remove shift_cast_success
