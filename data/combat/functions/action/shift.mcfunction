#parent: combat:loop
#Shift 導向

#左鍵偵測器
execute if data entity @s SelectedItem.tag.left_click_detect anchored eyes positioned ^ ^ ^ run function combat:call/summon_left_click_detector
