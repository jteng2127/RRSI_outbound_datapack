#parent: combat:chest_ui/page_list/detect
#關閉箱子ui
#備註: 位置標記執行

scoreboard players reset @p[tag= EID.target_id] CB.CUI.opening

scoreboard players reset @s EID.bind_id
scoreboard players reset @s CB.CUI.opening
scoreboard players reset @s CB.CUI.page

function combat:chest_ui/call/reset_chest
