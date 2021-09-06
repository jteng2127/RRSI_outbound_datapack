#parent: combat:action/shifting
#定位左鍵偵測器

function entity_id:call/search
tp @e[type= minecraft:bat, tag= left_click_detector, tag= prepared, tag= EID.target_bind_id] ~ ~-0.45 ~
