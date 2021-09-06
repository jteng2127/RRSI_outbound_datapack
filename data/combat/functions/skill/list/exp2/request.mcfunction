#parent: combat:skill/use_direct/1to10
#技能施放請求 範例二

#拒絕請求
execute unless score @s[tag= !cast_request_fail] CB.SK.exp2.lvl matches 1.. run function combat:skill/call/fail_announce/not_unlock
execute if score @s[tag= !cast_request_fail] CB.SK.cur_cd matches 1.. run function combat:skill/call/fail_announce/cd

#施放成功
execute as @s[tag= !cast_request_fail] run function combat:skill/list/exp2/cast

tag @s remove cast_request_fail