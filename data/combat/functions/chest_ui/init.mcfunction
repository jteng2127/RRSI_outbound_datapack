#parent: combat:init
#箱子ui系統初始化

#記分板
scoreboard objectives remove CB.CUI.set
scoreboard objectives remove CB.CUI.open
scoreboard objectives remove CB.CUI.opening
scoreboard objectives remove CB.CUI.open_rot
scoreboard objectives remove CB.CUI.cur_rot
scoreboard objectives remove CB.CUI.page
scoreboard objectives add CB.CUI.set minecraft.used:minecraft.rabbit_spawn_egg {"text": "箱子ui.箱子設置偵測"}
scoreboard objectives add CB.CUI.open minecraft.custom:minecraft.open_chest {"text": "箱子ui.開啟偵測"}
scoreboard objectives add CB.CUI.opening dummy {"text": "箱子ui.開啟中"}
scoreboard objectives add CB.CUI.open_rot dummy {"text": "箱子ui.開啟時視角"}
scoreboard objectives add CB.CUI.cur_rot dummy {"text": "箱子ui.目前視角"}
scoreboard objectives add CB.CUI.page dummy {"text": "箱子ui.目前頁面"}

#
