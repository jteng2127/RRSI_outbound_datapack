#parent: combat:chest_ui/action/detect
#ui動作偵測: 主選單

function entity_id:call/reverse_search

execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ~ ~ ~ {Items: [{Slot: 20b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.skill_point: 1b}}]} if entity @p[tag= EID.target_id, tag= op] run function combat:chest_ui/page_list/skill_point/open0
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ~ ~ ~ {Items: [{Slot: 20b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.skill_point: 1b}}]} if entity @p[tag= EID.target_id] unless entity @p[tag= op] run function combat:chest_ui/page_list/skill_point/open1
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ~ ~ ~ {Items: [{Slot: 22b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.set_skill: 1b}}]} run function combat:chest_ui/page_list/set_skill/open
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ~ ~ ~ {Items: [{Slot: 24b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.ability_point: 1b}}]} run function combat:chest_ui/page_list/ability_point/open
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ^1 ^ ^ {Items: [{Slot: 12b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.fast_move: 1b}}]} run function combat:chest_ui/page_list/fast_move/open
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}]} unless data block ^1 ^ ^ {Items: [{Slot: 14b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.set_spawn_point: 1b}}]} run function combat:chest_ui/page_list/set_spawn_point/open
