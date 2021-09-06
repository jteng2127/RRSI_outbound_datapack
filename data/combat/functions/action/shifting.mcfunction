#parent: combat:loop
#按住Shift 導向

#持續定位左鍵偵測器
execute if entity @s[tag= CB.left_click_detecting] anchored eyes positioned ^ ^ ^ run function combat:call/locaten_left_click_detector
