# x
execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Rotation 1000

scoreboard players operation #rotation_0 temp = #temp temp
scoreboard players operation #rotation_0 temp /= #1000 constants
execute if score #rotation_0 temp matches ..-1 run scoreboard players operation #rotation_0 temp *= #-1 constants

scoreboard players operation #rotation_1 temp = #temp temp
scoreboard players operation #rotation_1 temp %= #1000 constants
scoreboard players operation #rotation_1 temp /= #100 constants

# display
title @s actionbar [{"text":"Rotation: [","color":"#202020"},{"storage":"player_models:main","nbt":"signs[0]","color":"dark_green"},{"score":{"name":"#rotation_0","objective":"temp"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"#rotation_1","objective":"temp"},"color":"dark_green"},{"text":"]","color":"#202020"}]