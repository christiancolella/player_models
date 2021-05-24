scoreboard players set @e[type=armor_stand,tag=player,scores={temp=0},limit=1] temp 1

execute store result score #angle temp run data get entity @e[type=armor_stand,tag=player,scores={temp=1},limit=1] ArmorItems[0].tag.Rotation 1000

scoreboard players operation #input_cos temp = #angle temp
function player_models:math/cos
scoreboard players operation @e[type=armor_stand,tag=player,scores={temp=1},limit=1] cos_y = #output_cos temp

scoreboard players operation #input_sin temp = #angle temp
function player_models:math/sin
scoreboard players operation @e[type=armor_stand,tag=player,scores={temp=1},limit=1] sin_y = #output_sin temp

scoreboard players set @e[type=armor_stand,tag=player,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=player,scores={temp=0}] run function player_models:transform/trig