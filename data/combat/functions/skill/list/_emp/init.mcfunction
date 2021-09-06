#parent: combat:skill/init
#技能資料初始化 空

scoreboard objectives remove CB.SK._emp.lvl
scoreboard objectives remove CB.SK._emp.pro
scoreboard objectives remove CB.SK._emp.pxp
scoreboard objectives add CB.SK._emp.lvl dummy {"text": "技能資料:空-等級", "color": "light_purple"}
scoreboard objectives add CB.SK._emp.pro dummy {"text": "技能資料:空-熟練度", "color": "light_purple"}
scoreboard objectives add CB.SK._emp.pxp dummy {"text": "技能資料:空-熟練經驗", "color": "light_purple"}

scoreboard players set #_emp CB.SK.cur_cd emptycd
