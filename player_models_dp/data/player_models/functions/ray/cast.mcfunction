execute as @e[type=area_effect_cloud,tag=ray] at @s rotated as @p[scores={temp=1}] run tp @s ^ ^ ^0.5
execute at @e[type=area_effect_cloud,tag=ray] positioned ~ ~-1 ~ run tag @e[type=armor_stand,tag=player,distance=..0.5,limit=1] add hover

scoreboard players add #steps temp 1
execute if score #steps temp matches 64.. run kill @e[type=area_effect_cloud,tag=ray]
execute if entity @e[type=armor_stand,tag=hover] run kill @e[type=area_effect_cloud,tag=ray]

execute if entity @e[type=area_effect_cloud,tag=ray] run function player_models:ray/cast