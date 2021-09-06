#parent: combat:chest_ui/action/detect
#ui動作偵測: 技能點分配 第0頁
#未完成

#升級
execute unless data block ~ ~ ~ {Items: [{Slot: 18b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp1/upgrade
execute unless data block ~ ~ ~ {Items: [{Slot: 11b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp2/upgrade
execute unless data block ~ ~ ~ {Items: [{Slot: 13b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp3/upgrade
execute unless data block ~ ~ ~ {Items: [{Slot: 24b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp6/upgrade
execute unless data block ^1 ^ ^ {Items: [{Slot: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp4/upgrade
execute unless data block ^1 ^ ^ {Items: [{Slot: 4b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b}}]} as @p[tag= EID.target_id] run function combat:skill/list/exp5/upgrade

#頁面回復
execute unless data block ~ ~ ~ {Items: [{Slot:0b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.back_menu: 1b}}, {Slot: 12b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 19b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 23b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 25b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 26b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 18b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp1: 1b}}, {Slot: 11b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp2: 1b}}, {Slot: 13b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp3: 1b}}, {Slot: 24b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp6: 1b}}]} run function combat:chest_ui/page_list/skill_point/open0
execute if score @p[tag= EID.target_id] CB.SK.point matches 1.. unless data block ^1 ^ ^ {Items: [{Slot: 21b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.last_page: 1b}}, {Slot: 23b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.next_page: 1b}}, {Slot: 25b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.skill_points: 1b}}, {Slot: 26b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.reset_skill: 1b}}, {Slot: 3b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b}}, {Slot: 4b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b}}]} run function combat:chest_ui/page_list/skill_point/open0
execute unless score @p[tag= EID.target_id] CB.SK.point matches 1.. unless data block ^1 ^ ^ {Items: [{Slot: 21b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.last_page: 1b}}, {Slot: 23b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.next_page: 1b}}, {Slot: 26b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.reset_skill: 1b}}, {Slot: 3b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.null: 1b}}, {Slot: 2b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp4: 1b}}, {Slot: 4b, tag: {CB.CUI.ui_item: 1b, CB.CUI.OPT.SK.exp5: 1b}}]} run function combat:chest_ui/page_list/skill_point/open0

#換頁
