# x
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftArm[0] 1000

scoreboard players operation #x_rot_0 temp = #temp temp
scoreboard players operation #x_rot_0 temp /= #1000 constants
execute if score #x_rot_0 temp matches ..-1 run scoreboard players operation #x_rot_0 temp *= #-1 constants

scoreboard players operation #x_rot_1 temp = #temp temp
scoreboard players operation #x_rot_1 temp %= #1000 constants
scoreboard players operation #x_rot_1 temp /= #100 constants

# y
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftArm[1] 1000

scoreboard players operation #y_rot_0 temp = #temp temp
scoreboard players operation #y_rot_0 temp /= #1000 constants
execute if score #y_rot_0 temp matches ..-1 run scoreboard players operation #y_rot_0 temp *= #-1 constants

scoreboard players operation #y_rot_1 temp = #temp temp
scoreboard players operation #y_rot_1 temp %= #1000 constants
scoreboard players operation #y_rot_1 temp /= #100 constants

# z
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftArm[2] 1000

scoreboard players operation #z_rot_0 temp = #temp temp
scoreboard players operation #z_rot_0 temp /= #1000 constants
execute if score #z_rot_0 temp matches ..-1 run scoreboard players operation #z_rot_0 temp *= #-1 constants

scoreboard players operation #z_rot_1 temp = #temp temp
scoreboard players operation #z_rot_1 temp %= #1000 constants
scoreboard players operation #z_rot_1 temp /= #100 constants

# display
title @s actionbar [{"text":"Left Arm Rotation: [","color":"#202020"},{"storage":"player_models:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_rot_0","objective":"temp"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_1","objective":"temp"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"player_models:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_rot_0","objective":"temp"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_1","objective":"temp"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"player_models:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_rot_0","objective":"temp"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_1","objective":"temp"},"color":"dark_blue"},{"text":"]","color":"#202020"}]