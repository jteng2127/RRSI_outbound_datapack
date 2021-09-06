#parent: combat:chest_ui/loop
#頁面偵測導向

#尋找玩家
function entity_id:call/reverse_search

#頁面偵測導向
execute if score @s CB.CUI.page matches 10 run function combat:chest_ui/page_list/menu/detect
execute if score @s CB.CUI.page matches 20 run function combat:chest_ui/page_list/skill_point/detect0
execute if score @s CB.CUI.page matches 30 run function combat:chest_ui/page_list/set_skill/detect

#偵測關閉箱子
execute store result score @p[tag= EID.target_id] CB.CUI.cur_rot run data get entity @p[tag= EID.target_id] Rotation[0] 100
execute unless score @p[tag= EID.target_id] CB.CUI.open_rot = @p[tag= EID.target_id] CB.CUI.cur_rot run function combat:chest_ui/action/close
