# next/previous skin
execute if score @s execute matches 101..102 as @e[type=armor_stand,tag=selected_bone] store result score @s temp run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s execute matches 101 unless entity @e[type=armor_stand,tag=selected_bone,scores={temp=1}] run scoreboard players remove @e[type=armor_stand,tag=selected_bone] temp 6
execute if score @s execute matches 102 run scoreboard players add @e[type=armor_stand,tag=selected_bone] temp 6
execute if score @s execute matches 101..102 as @e[type=armor_stand,tag=selected_bone] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s temp

# delete
execute if score @s execute matches 103 run kill @e[type=armor_stand,tag=selected_player]
execute if score @s execute matches 103 run kill @e[type=armor_stand,tag=selected_bone]