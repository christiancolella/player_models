execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1

# position
execute if score @s inventory matches 3 run function player_models:execute/move/x
execute if score @s inventory matches 4 run function player_models:execute/move/y
execute if score @s inventory matches 5 run function player_models:execute/move/z

# rotation
execute if score @s inventory matches 6 run function player_models:execute/rotate/player

# next/previous skin
execute if score @s execute matches 104..105 as @e[type=armor_stand,tag=selected_bone] store result score @s temp run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s execute matches 104 unless entity @e[type=armor_stand,tag=selected_bone,scores={temp=1}] run scoreboard players remove @e[type=armor_stand,tag=selected_bone] temp 6
execute if score @s execute matches 105 run scoreboard players add @e[type=armor_stand,tag=selected_bone] temp 6
execute if score @s execute matches 104..105 as @e[type=armor_stand,tag=selected_bone] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s temp

# delete
execute if score @s execute matches 106 run kill @e[type=armor_stand,tag=selected_player]
execute if score @s execute matches 106 run kill @e[type=armor_stand,tag=selected_bone]

# pose

## head
execute if score @s inventory matches 12 run function player_models:execute/rotate/head/x
execute if score @s inventory matches 13 run function player_models:execute/rotate/head/y
execute if score @s inventory matches 14 run function player_models:execute/rotate/head/z

## body
execute if score @s inventory matches 16 run function player_models:execute/rotate/body/x
execute if score @s inventory matches 17 run function player_models:execute/rotate/body/y
execute if score @s inventory matches 18 run function player_models:execute/rotate/body/z

## right arm
execute if score @s inventory matches 20 run function player_models:execute/rotate/right_arm/x
execute if score @s inventory matches 21 run function player_models:execute/rotate/right_arm/y
execute if score @s inventory matches 22 run function player_models:execute/rotate/right_arm/z

## left arm
execute if score @s inventory matches 24 run function player_models:execute/rotate/left_arm/x
execute if score @s inventory matches 25 run function player_models:execute/rotate/left_arm/y
execute if score @s inventory matches 26 run function player_models:execute/rotate/left_arm/z

## right leg
execute if score @s inventory matches 28 run function player_models:execute/rotate/right_leg/x
execute if score @s inventory matches 29 run function player_models:execute/rotate/right_leg/y
execute if score @s inventory matches 30 run function player_models:execute/rotate/right_leg/z

## left leg
execute if score @s inventory matches 32 run function player_models:execute/rotate/left_leg/x
execute if score @s inventory matches 33 run function player_models:execute/rotate/left_leg/y
execute if score @s inventory matches 34 run function player_models:execute/rotate/left_leg/z