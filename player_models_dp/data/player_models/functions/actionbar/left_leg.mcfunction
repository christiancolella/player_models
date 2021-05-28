# x
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftLeg[0] 1000

scoreboard players operation #x_rot_0 temp = #temp temp
scoreboard players operation #x_rot_0 temp /= #1000 constants

scoreboard players operation #x_rot_1 temp = #temp temp
scoreboard players operation #x_rot_1 temp %= #1000 constants
scoreboard players operation #x_rot_1 temp /= #100 constants

# y
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftLeg[1] 1000

scoreboard players operation #y_rot_0 temp = #temp temp
scoreboard players operation #y_rot_0 temp /= #1000 constants

scoreboard players operation #y_rot_1 temp = #temp temp
scoreboard players operation #y_rot_1 temp %= #1000 constants
scoreboard players operation #y_rot_1 temp /= #100 constants

# z
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftLeg[2] 1000

scoreboard players operation #z_rot_0 temp = #temp temp
scoreboard players operation #z_rot_0 temp /= #1000 constants

scoreboard players operation #z_rot_1 temp = #temp temp
scoreboard players operation #z_rot_1 temp %= #1000 constants
scoreboard players operation #z_rot_1 temp /= #100 constants

# display
title @s actionbar [{"text":"Left Leg Rotation: [","color":"#202020"},{"score":{"name":"#x_rot_0","objective":"temp"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_rot_1","objective":"temp"},"color":"dark_red"},{"text":", ","color":"#202020"},{"score":{"name":"#y_rot_0","objective":"temp"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_rot_1","objective":"temp"},"color":"dark_green"},{"text":", ","color":"#202020"},{"score":{"name":"#z_rot_0","objective":"temp"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_rot_1","objective":"temp"},"color":"dark_blue"},{"text":"]","color":"#202020"}]