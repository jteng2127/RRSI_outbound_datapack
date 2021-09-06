#parent: rr:main/loop
#戰鬥系統循環指令

#玩家動作
execute as @a if score @s CB.use matches 1.. if score @s CB.shift matches 0 at @s run function combat:action/use
execute as @a if score @s CB.use matches 1.. unless score @s CB.shift matches 0 at @s run function combat:action/shift_use
execute as @a if score @s CB.throw matches 1.. if score @s CB.shift matches 0 at @s run function combat:action/throw
execute as @a if score @s CB.throw matches 1.. unless score @s CB.shift matches 0 at @s run function combat:action/shift_throw
execute as @a if score @s CB.shift matches 1.. at @s run function combat:action/shift
execute as @a if score @s CB.shift matches -1 at @s run function combat:action/shifting
execute as @a if score @s CB.shift matches -3 at @s run function combat:action/shift_release

#若無玩家蹲下中, 刪除所有左鍵偵測器(待補)

#記分板運算
scoreboard players set @a CB.use 0
scoreboard players set @a CB.throw 0
execute as @a if score @s CB.shift matches 1.. run scoreboard players set @s CB.shift -1
execute as @a if score @s CB.shift matches ..-1 run scoreboard players remove @s CB.shift 1
execute as @a if score @s CB.shift matches -4 run scoreboard players set @s CB.shift 0

#子系統循環指令
function combat:skill/loop
function combat:chest_ui/loop
function combat:hotbar/loop
