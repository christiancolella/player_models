data merge storage player_models:main {signs:["","",""]}

# x
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pos[0] 1000
execute if score #temp temp matches ..-1 run data modify storage player_models:main signs[0] set value "-"

scoreboard players operation #x_pos_0 temp = #temp temp
scoreboard players operation #x_pos_0 temp /= #1000 constants
execute if score #x_pos_0 temp matches ..-1 run scoreboard players operation #x_pos_0 temp *= #-1 constants

scoreboard players operation #x_pos_1 temp = #temp temp
scoreboard players operation #x_pos_1 temp %= #1000 constants
scoreboard players operation #x_pos_1 temp /= #100 constants

scoreboard players operation #x_pos_2 temp = #temp temp
scoreboard players operation #x_pos_2 temp %= #100 constants
scoreboard players operation #x_pos_2 temp /= #10 constants

scoreboard players operation #x_pos_3 temp = #temp temp
scoreboard players operation #x_pos_3 temp %= #10 constants

# y
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pos[1] 1000
execute if score #temp temp matches ..-1 run data modify storage player_models:main signs[1] set value "-"

scoreboard players operation #y_pos_0 temp = #temp temp
scoreboard players operation #y_pos_0 temp /= #1000 constants
execute if score #y_pos_0 temp matches ..-1 run scoreboard players operation #y_pos_0 temp *= #-1 constants

scoreboard players operation #y_pos_1 temp = #temp temp
scoreboard players operation #y_pos_1 temp %= #1000 constants
scoreboard players operation #y_pos_1 temp /= #100 constants

scoreboard players operation #y_pos_2 temp = #temp temp
scoreboard players operation #y_pos_2 temp %= #100 constants
scoreboard players operation #y_pos_2 temp /= #10 constants

scoreboard players operation #y_pos_3 temp = #temp temp
scoreboard players operation #y_pos_3 temp %= #10 constants

# z
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pos[2] 1000
execute if score #temp temp matches ..-1 run data modify storage player_models:main signs[2] set value "-"

scoreboard players operation #z_pos_0 temp = #temp temp
scoreboard players operation #z_pos_0 temp /= #1000 constants
execute if score #z_pos_0 temp matches ..-1 run scoreboard players operation #z_pos_0 temp *= #-1 constants

scoreboard players operation #z_pos_1 temp = #temp temp
scoreboard players operation #z_pos_1 temp %= #1000 constants
scoreboard players operation #z_pos_1 temp /= #100 constants

scoreboard players operation #z_pos_2 temp = #temp temp
scoreboard players operation #z_pos_2 temp %= #100 constants
scoreboard players operation #z_pos_2 temp /= #10 constants

scoreboard players operation #z_pos_3 temp = #temp temp
scoreboard players operation #z_pos_3 temp %= #10 constants

# display
title @p[scores={temp=1}] actionbar [{"text":"Position: [","color":"#202020"},{"storage":"player_models:main","nbt":"signs[0]","color":"dark_red"},{"score":{"name":"#x_pos_0","objective":"temp"},"color":"dark_red"},{"text":".","color":"dark_red"},{"score":{"name":"#x_pos_1","objective":"temp"},"color":"dark_red"},{"score":{"name":"#x_pos_2","objective":"temp"},"color":"dark_red"},{"score":{"name":"#x_pos_3","objective":"temp"},"color":"dark_red"},{"text":", ","color":"#202020"},{"storage":"player_models:main","nbt":"signs[1]","color":"dark_green"},{"score":{"name":"#y_pos_0","objective":"temp"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#y_pos_1","objective":"temp"},"color":"dark_green"},{"score":{"name":"#y_pos_2","objective":"temp"},"color":"dark_green"},{"score":{"name":"#y_pos_3","objective":"temp"},"color":"dark_green"},{"text":", ","color":"#202020"},{"storage":"player_models:main","nbt":"signs[2]","color":"dark_blue"},{"score":{"name":"#z_pos_0","objective":"temp"},"color":"dark_blue"},{"text":".","color":"dark_blue"},{"score":{"name":"#z_pos_1","objective":"temp"},"color":"dark_blue"},{"score":{"name":"#z_pos_2","objective":"temp"},"color":"dark_blue"},{"score":{"name":"#z_pos_3","objective":"temp"},"color":"dark_blue"},{"text":"]","color":"#202020"}]