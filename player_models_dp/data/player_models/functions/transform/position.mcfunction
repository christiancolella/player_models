execute store result score @s pos_x run data get entity @s ArmorItems[0].tag.Pos[0] 1000
execute store result score @s temp run data get entity @s ArmorItems[1].tag.Offset[0] 1000
scoreboard players operation @s temp *= @s cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s pos_x += @s temp
execute store result score @s temp run data get entity @s ArmorItems[1].tag.Offset[2] 1000
scoreboard players operation @s temp *= @s sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s pos_x -= @s temp
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s pos_x

execute store result score @s pos_y run data get entity @s ArmorItems[0].tag.Pos[1] 1000
execute store result score @s temp run data get entity @s ArmorItems[1].tag.Offset[1] 1000
scoreboard players operation @s pos_y += @s temp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s pos_y

execute store result score @s pos_z run data get entity @s ArmorItems[0].tag.Pos[2] 1000
execute store result score @s temp run data get entity @s ArmorItems[1].tag.Offset[0] 1000
scoreboard players operation @s temp *= @s sin_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s pos_z += @s temp
execute store result score @s temp run data get entity @s ArmorItems[1].tag.Offset[2] 1000
scoreboard players operation @s temp *= @s cos_y
scoreboard players operation @s temp /= #1000 constants
scoreboard players operation @s pos_z += @s temp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s pos_z