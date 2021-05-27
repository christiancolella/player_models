execute store result score #temp temp run data get entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftLeg[0] 1000

execute if score @s execute matches 129 run scoreboard players add #temp temp 90000
execute if score @s execute matches 130 run scoreboard players remove #temp temp 90000

execute if score @s execute matches 131 run scoreboard players add #temp temp 15000
execute if score @s execute matches 132 run scoreboard players remove #temp temp 15000

execute if score @s execute matches 133 run scoreboard players add #temp temp 2500
execute if score @s execute matches 134 run scoreboard players remove #temp temp 2500

scoreboard players operation #temp temp %= #360000 constants
execute store result entity @e[type=armor_stand,tag=selected_player,limit=1] ArmorItems[0].tag.Pose.LeftLeg[0] float 0.001 run scoreboard players get #temp temp