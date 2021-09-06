#parent: combat:skill/use_direct/51to60
#技能施放請求 聚能驅動

#拒絕請求
execute if score @s[tag= !cast_request_fail] CB.SK.cur_cd matches 1.. run function combat:skill/call/fail_announce/cd

#施放成功
execute as @s[tag= !cast_request_fail] run function combat:skill/list/do2/cast

tag @s remove cast_request_fail