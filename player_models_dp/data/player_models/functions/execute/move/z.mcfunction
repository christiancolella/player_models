execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pos[2] 1000

scoreboard players operation #parity temp = #temp temp
scoreboard players operation #parity temp %= #1000 constants
scoreboard players operation #parity temp *= #8 constants
scoreboard players operation #parity temp %= #1000 constants

execute if score @s execute matches 123 run scoreboard players add #temp temp 2000
execute if score @s execute matches 124 run scoreboard players remove #temp temp 2000

execute if score @s execute matches 125 run scoreboard players add #temp temp 500
execute if score @s execute matches 126 run scoreboard players remove #temp temp 500

execute if score @s execute matches 127 if score #parity temp matches 0 run scoreboard players add #temp temp 63
execute if score @s execute matches 128 if score #parity temp matches 0 run scoreboard players remove #temp temp 62

execute if score @s execute matches 127 if score #parity temp matches 1.. run scoreboard players add #temp temp 62
execute if score @s execute matches 128 if score #parity temp matches 1.. run scoreboard players remove #temp temp 63

execute store result entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pos[2] double 0.001 run scoreboard players get #temp temp