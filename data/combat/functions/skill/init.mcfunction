#parent: combat:init
#技能系統初始化

#技能資料
scoreboard objectives remove CB.SK.point
scoreboard objectives remove CB.SK.cur_id
scoreboard objectives remove CB.SK.cur_cd
scoreboard objectives remove CB.SK.cur_pro
scoreboard objectives remove CB.SK.cur_slot
scoreboard objectives add CB.SK.point dummy {"text": "技能資料:技能點數", "color": "light_purple"}
scoreboard players set #-1 CB.SK.point -1
scoreboard players set #up1 CB.SK.point 1
scoreboard players set #up2 CB.SK.point 2
scoreboard players set #up3 CB.SK.point 3
scoreboard objectives add CB.SK.cur_id dummy {"text": "技能資料:使用技能編號", "color": "light_purple"}
scoreboard objectives add CB.SK.cur_cd dummy {"text": "技能資料:使用技能冷卻", "color": "light_purple"}
scoreboard players set #100 CB.SK.cur_cd 100
scoreboard players set #20 CB.SK.cur_cd 20
scoreboard objectives add CB.SK.cur_pro dummy {"text": "技能資料:使用技能熟練等級", "color": "light_purple"}
scoreboard players set #increase1 CB.SK.cur_pro 10
scoreboard players set #increase2 CB.SK.cur_pro 30
scoreboard players set #increase3 CB.SK.cur_pro 80
scoreboard objectives add CB.SK.cur_slot dummy {"text": "技能資料:目前選擇槽", "color": "light_purple"}

scoreboard objectives remove CB.SK.slot1
scoreboard objectives remove CB.SK.slot2
scoreboard objectives remove CB.SK.slot3
scoreboard objectives remove CB.SK.slot4
scoreboard objectives remove CB.SK.slot5
scoreboard objectives remove CB.SK.slot6
scoreboard objectives remove CB.SK.slot7
scoreboard objectives remove CB.SK.slot8
scoreboard objectives remove CB.SK.cd1
scoreboard objectives remove CB.SK.cd2
scoreboard objectives remove CB.SK.cd3
scoreboard objectives remove CB.SK.cd4
scoreboard objectives remove CB.SK.cd5
scoreboard objectives remove CB.SK.cd6
scoreboard objectives remove CB.SK.cd7
scoreboard objectives remove CB.SK.cd8
scoreboard objectives remove CB.SK.cd_q
scoreboard objectives remove CB.SK.cd_sq
scoreboard objectives add CB.SK.slot1 dummy {"text": "技能資料:技能槽1", "color": "light_purple"}
scoreboard objectives add CB.SK.slot2 dummy {"text": "技能資料:技能槽2", "color": "light_purple"}
scoreboard objectives add CB.SK.slot3 dummy {"text": "技能資料:技能槽3", "color": "light_purple"}
scoreboard objectives add CB.SK.slot4 dummy {"text": "技能資料:技能槽4", "color": "light_purple"}
scoreboard objectives add CB.SK.slot5 dummy {"text": "技能資料:技能槽5", "color": "light_purple"}
scoreboard objectives add CB.SK.slot6 dummy {"text": "技能資料:技能槽6", "color": "light_purple"}
scoreboard objectives add CB.SK.slot7 dummy {"text": "技能資料:被動槽1", "color": "light_purple"}
scoreboard objectives add CB.SK.slot8 dummy {"text": "技能資料:被動槽2", "color": "light_purple"}
scoreboard objectives add CB.SK.cd1 dummy {"text": "技能資料:技能1冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd2 dummy {"text": "技能資料:技能2冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd3 dummy {"text": "技能資料:技能3冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd4 dummy {"text": "技能資料:技能4冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd5 dummy {"text": "技能資料:技能5冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd6 dummy {"text": "技能資料:技能6冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd7 dummy {"text": "技能資料:被動1冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd8 dummy {"text": "技能資料:被動2冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd_q dummy {"text": "技能資料:Q鍵冷卻", "color": "light_purple"}
scoreboard objectives add CB.SK.cd_sq dummy {"text": "技能資料:Shift+Q鍵冷卻", "color": "light_purple"}

#技能列表
function combat:skill/list/exp1/init
function combat:skill/list/exp2/init
function combat:skill/list/exp3/init
function combat:skill/list/exp4/init
function combat:skill/list/exp5/init
function combat:skill/list/exp6/init
function combat:skill/list/do1/init
function combat:skill/list/do2/init
#function combat:skill/list/_empty/init
