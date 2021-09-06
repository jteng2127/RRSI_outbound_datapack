#parent: combat:skill/list/../cast
#cd計算

#計算%數
scoreboard players set #cal CB.SK.cur_cd 100
execute if score @s CB.SK.cur_pro matches 1 run scoreboard players remove #cal CB.SK.cur_cd 10
execute if score @s CB.SK.cur_pro matches 2 run scoreboard players remove #cal CB.SK.cur_cd 20
execute if score @s CB.SK.cur_pro matches 3 run scoreboard players remove #cal CB.SK.cur_cd 30
execute if entity @s[tag= op.inf_cd] run scoreboard players set #cal CB.SK.cur_cd 100000
execute if entity @s[tag= op.no_cd] run scoreboard players set #cal CB.SK.cur_cd 0

#計算
scoreboard players operation @s CB.SK.cur_cd *= #cal CB.SK.cur_cd
scoreboard players operation @s CB.SK.cur_cd /= #100 CB.SK.cur_cd

#回傳
execute if score @s CB.SK.cur_slot matches 1 run scoreboard players operation @s CB.SK.cd1 = @s CB.SK.cur_cd
execute if score @s CB.SK.cur_slot matches 2 run scoreboard players operation @s CB.SK.cd2 = @s CB.SK.cur_cd
execute if score @s CB.SK.cur_slot matches 3 run scoreboard players operation @s CB.SK.cd3 = @s CB.SK.cur_cd
execute if score @s CB.SK.cur_slot matches 4 run scoreboard players operation @s CB.SK.cd4 = @s CB.SK.cur_cd
execute if score @s CB.SK.cur_slot matches 5 run scoreboard players operation @s CB.SK.cd5 = @s CB.SK.cur_cd
execute if score @s CB.SK.cur_slot matches 6 run scoreboard players operation @s CB.SK.cd6 = @s CB.SK.cur_cd
