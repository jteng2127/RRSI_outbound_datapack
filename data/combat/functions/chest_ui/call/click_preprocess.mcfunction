#parent: combat:chest_ui/page_list/.../open
#點擊執行的預處理
#由位置標記執行

function entity_id:call/reverse_search
clear @p[tag= EID.target_id] minecraft:barrier{CB.CUI.ui_item: 1b}
kill @e[type= minecraft:item, nbt= {Item: {id: "minecraft:barrier", tag: {CB.CUI.ui_item: 1b}}}]
