execute as @a[tag=a,scores={temp=0},limit=1] run scoreboard players set @s temp 1

# remove tags
tag @e[type=armor_stand,tag=player] remove hover
tag @e[type=armor_stand,tag=player] remove selected_player
tag @e[type=armor_stand,tag=bone] remove selected_bone

# summon ray
execute as @p[scores={temp=1}] at @s run summon area_effect_cloud ~ ~1.625 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ray"]}

# cast ray
scoreboard players set #steps temp 0
execute unless entity @p[tag=drag,scores={temp=1}] run function player_models:ray/cast

# action
execute as @p[scores={temp=1}] store result score @s execute run data get entity @s SelectedItem.tag.CustomModelData

tag @e[type=armor_stand,tag=hover] add selected_player
execute as @e[type=armor_stand,tag=bone] if score @s id = @e[type=armor_stand,tag=selected_player,limit=1] id run tag @s add selected_bone

execute if entity @e[type=armor_stand,tag=hover] run tag @p[scores={temp=1}] add hover
execute as @p[scores={click=1,temp=1}] run function player_models:execute/main
scoreboard players set @a click 0

# glow
execute if score @p[scores={temp=1}] execute matches 103 run team join dark_red @e[type=armor_stand,tag=selected_bone]
execute as @e[type=armor_stand,tag=selected_bone] run data merge entity @s {Glowing:1b}

# repeat
scoreboard players set @p[scores={temp=1}] temp 2
execute if entity @a[tag=a,scores={temp=0}] run function player_models:ray/main