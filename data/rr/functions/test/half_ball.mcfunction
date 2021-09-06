#summon minecraft:armor_stand 2007.5 89.0 116.5 {NoGravity: 1b, Tags: ["half_ball"]}
execute as @e[tag= half_ball] at @s run tp @s ~ ~ ~ ~0.2 ~
execute as @e[tag= half_ball] at @s run setblock ^ ^ ^50 minecraft:stone_bricks
#execute as @e[tag= half_ball, y_rotation= 45..90] run tag @s add up_ready
#execute as @e[tag= half_ball, y_rotation= -90..-45, tag= up_ready] at @s run tp @s ~ ~ ~ ~ ~-0.2
#execute as @e[tag= half_ball, y_rotation= -90..-45, tag= up_ready] run tag @s remove up_ready

scoreboard players remove time test 1
execute if score time test matches 1.. run function rr:test/half_ball