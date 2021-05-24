scoreboard players set @e[type=armor_stand,tag=player,scores={temp=0},limit=1] temp 1

execute as @e[type=armor_stand,tag=bone] if score @s id = @e[type=armor_stand,tag=player,scores={temp=1},limit=1] id run data modify entity @s ArmorItems[0] set from entity @e[type=armor_stand,tag=player,scores={temp=1},limit=1] ArmorItems[0]

scoreboard players set @e[type=armor_stand,tag=player,scores={temp=1}] temp 2
execute if entity @e[type=armor_stand,tag=player,scores={temp=0}] run function player_models:transform/send_pose