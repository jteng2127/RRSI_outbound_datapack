#parent: rr:main/init
#戰鬥系統初始化

#動作偵測
scoreboard objectives remove CB.use
scoreboard objectives remove CB.shift
scoreboard objectives remove CB.throw
scoreboard objectives add CB.use minecraft.used:minecraft.carrot_on_a_stick {"text": "戰鬥系統右鍵偵測"}
scoreboard objectives add CB.shift minecraft.custom:minecraft.sneak_time {"text": "戰鬥系統Shift偵測"}
scoreboard objectives add CB.throw minecraft.dropped:minecraft.carrot_on_a_stick {"text": "戰鬥系統Q鍵偵測"}

#子系統初始化
function combat:skill/init
function combat:chest_ui/init
function combat:hotbar/init