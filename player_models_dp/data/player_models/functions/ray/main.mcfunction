# remove tags
tag @e[type=armor_stand,tag=player] remove hover
tag @e[type=armor_stand,tag=player] remove selected_player
tag @e[type=armor_stand,tag=bone] remove selected_bone

# summon ray
execute at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}

# cast ray
scoreboard players set #steps temp 0
function player_models:ray/cast

# action
execute store result score @s execute run data get entity @s SelectedItem.tag.CustomModelData

tag @e[type=armor_stand,tag=hover] add selected_player
execute as @e[type=armor_stand,tag=bone] if score @s id = @e[type=armor_stand,tag=selected_player,limit=1] id run tag @s add selected_bone

execute if entity @e[type=armor_stand,tag=hover] run tag @s add hover
execute as @s[scores={click=1}] run function player_models:execute/main

# glow
execute if score @s execute matches 104..105 run team join light_purple @e[type=armor_stand,tag=selected_bone]

execute if score @s execute matches 106 run team join dark_red @e[type=armor_stand,tag=selected_bone]

execute if score @s execute matches 111..116 run team join red @e[type=armor_stand,tag=selected_bone]
execute if score @s execute matches 117..122 run team join green @e[type=armor_stand,tag=selected_bone]
execute if score @s execute matches 123..128 run team join blue @e[type=armor_stand,tag=selected_bone]

execute if score @s execute matches 129..134 run team join red @e[type=armor_stand,tag=selected_bone]
execute if score @s execute matches 135..140 run team join green @e[type=armor_stand,tag=selected_bone]
execute if score @s execute matches 141..146 run team join blue @e[type=armor_stand,tag=selected_bone]

execute unless score @s inventory matches 11..34 as @e[type=armor_stand,tag=selected_bone] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 11..14 as @e[type=armor_stand,tag=selected_bone,tag=head] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 15..18 as @e[type=armor_stand,tag=selected_bone,tag=body] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 19..22 as @e[type=armor_stand,tag=selected_bone,tag=right_arm] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 23..26 as @e[type=armor_stand,tag=selected_bone,tag=left_arm] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 27..30 as @e[type=armor_stand,tag=selected_bone,tag=right_leg] run data merge entity @s {Glowing:1b}
execute if score @s inventory matches 31..34 as @e[type=armor_stand,tag=selected_bone,tag=left_leg] run data merge entity @s {Glowing:1b}

# actionbar
execute if score @s[tag=hover] inventory matches 2..5 run function player_models:actionbar/position
execute if score @s[tag=hover] inventory matches 6 run function player_models:actionbar/rotation
execute if score @s[tag=hover] inventory matches 11..14 run function player_models:actionbar/head
execute if score @s[tag=hover] inventory matches 15..18 run function player_models:actionbar/body
execute if score @s[tag=hover] inventory matches 19..22 run function player_models:actionbar/right_arm
execute if score @s[tag=hover] inventory matches 23..26 run function player_models:actionbar/left_arm
execute if score @s[tag=hover] inventory matches 27..30 run function player_models:actionbar/right_leg
execute if score @s[tag=hover] inventory matches 31..34 run function player_models:actionbar/left_leg
