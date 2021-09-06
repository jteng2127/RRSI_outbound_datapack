#parent: combat:adv.leftclickdetect
#測試點擊左鍵時是不是按著shift

advancement revoke @s only combat:left_click_detect
execute if score @s CB.shift matches -1 run function combat:action/shift_hit