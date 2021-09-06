# parent: combat:init
# 快捷鍵系統初始化

# 記分板
scoreboard objectives remove CB.HB.weapon
scoreboard objectives remove CB.HB.skill
scoreboard objectives remove CB.HB.sel_slot
scoreboard objectives remove CB.HB.use
scoreboard objectives add CB.HB.weapon dummy {"text": "快捷鍵系統.使用武器編號"}
scoreboard objectives add CB.HB.skill dummy {"text": "快捷鍵系統.技能資訊"}
scoreboard objectives add CB.HB.sel_slot dummy {"text": "快捷鍵系統.目前選取欄"}
scoreboard objectives add CB.HB.use minecraft.used:minecraft.carrot_on_a_stick {"text": "快捷鍵系統.使用偵測"}
# 技能
scoreboard objectives remove CB.HB.skill_on
scoreboard objectives remove CB.HB.cur_slot
scoreboard objectives add CB.HB.skill_on dummy {"text": "快捷鍵系統.技能欄開啟"}
scoreboard objectives add CB.HB.cur_slot dummy {"text": "快捷鍵系統.目前選取技能槽(暫存用)"}
