#parent: combat:chest_ui/loop
#ui初始化
#切換頁面: 初始選單

#綁定&賦值
tag @s add EID.get_bind
scoreboard players set @s CB.CUI.opening 1
execute as @p[scores= {CB.CUI.open= 1..}] run function entity_id:call/bind

function entity_id:call/reverse_search
scoreboard players set @p[tag= EID.target_id] CB.CUI.opening 1
execute as @p[tag= EID.target_id] store result score @s CB.CUI.open_rot run data get entity @s Rotation[0] 100

#頁面
function combat:chest_ui/page_list/menu/open
