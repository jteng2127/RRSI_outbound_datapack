#parent: combat:loop
#Shift釋放 導向

#say shift_release
#回復
tag @s remove CB.left_click_detecting
function entity_id:call/search
tp @e[tag= left_click_detector, tag= EID.target_bind_id] ~ -64 ~
kill @e[tag= left_click_detector, tag= EID.target_bind_id]
advancement revoke @s only combat:left_click_detect
