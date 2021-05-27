# new player
scoreboard players set @e[type=armor_stand,tag=new_player] id 1
execute as @e[type=armor_stand,tag=player] run function player_models:misc/id

## summon bones
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~ ~0.075 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[0.0d,0.075d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:1}}],Tags:["head","new_bone"]}
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~ ~0.075 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[0.0d,0.075d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:2}}],Tags:["body","new_bone"]}
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~0.343 ~-0.05 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[0.343d,-0.05d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:3}}],Tags:["right_arm","new_bone"]}
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~-0.343 ~-0.05 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[-0.343d,-0.05d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:4}}],Tags:["left_arm","new_bone"]}
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~0.125 ~-0.675 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[0.125d,-0.675d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:5}}],Tags:["right_leg","new_bone"]}
execute as @e[type=armor_stand,tag=new_player] at @s run summon armor_stand ~-0.125 ~-0.675 ~ {id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{id:"minecraft:melon_slice",Count:1b,tag:{Offset:[-0.125d,-0.675d,0.0d]}},{},{id:"minecraft:melon_slice",Count:1b,tag:{CustomModelData:6}}],Tags:["left_leg","new_bone"]}

## send data to new bones
scoreboard players operation @e[type=armor_stand,tag=new_bone] id = @e[type=armor_stand,tag=new_player,limit=1] id
execute as @e[type=armor_stand,tag=new_player] run data modify entity @s ArmorItems[0].tag.Pos set from entity @s Pos
execute as @e[type=armor_stand,tag=new_bone] run data modify entity @s ArmorItems[0].tag.Pos set from entity @e[type=armor_stand,tag=new_player,limit=1] Pos

tag @e[type=armor_stand,tag=new_bone] add bone
tag @e[type=armor_stand,tag=new_bone] remove new_bone

tag @e[type=armor_stand,tag=new_player] add player
tag @e[type=armor_stand,tag=new_player] remove new_player

# actions
team join aqua @e[type=armor_stand,tag=bone]
execute as @e[type=armor_stand,tag=bone] run data merge entity @s {Glowing:0b}

tag @a remove hover
execute as @a[tag=player_models] run function player_models:ray/main

scoreboard players set @a[tag=!player_models] inventory 1
execute as @a[tag=player_models] run function player_models:inventory/main
scoreboard players set @a click 0

# transform
scoreboard players set @e[type=armor_stand,tag=player] temp 0
function player_models:transform/send_pose

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.Head
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.Body
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{Body:[0.001f,0.001f,0.001f]}}

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.RightArm
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{RightArm:[0.001f,0.001f,0.001f]}}

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.LeftArm
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{LeftArm:[0.001f,0.001f,0.001f]}}

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.RightLeg
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{RightLeg:[0.001f,0.001f,0.001f]}}

scoreboard players set @e[type=armor_stand] temp 0
execute as @e[type=armor_stand,tag=bone] store success score @s temp run data get entity @s Pose.LeftLeg
execute as @e[type=armor_stand,tag=bone,scores={temp=0}] run data merge entity @s {Pose:{LeftLeg:[0.001f,0.001f,0.001f]}}

execute as @e[type=armor_stand,tag=bone] run function player_models:transform/rotation

scoreboard players set @e[type=armor_stand] temp 0
function player_models:transform/trig

scoreboard players set @e[type=armor_stand] temp 0
function player_models:transform/send_trig

execute as @e[type=armor_stand,tag=bone] run function player_models:transform/position
execute as @e[type=armor_stand,tag=player] run data modify entity @s Pos set from entity @s ArmorItems[0].tag.Pos

## player spawn egg
## give @p ghast_spawn_egg{display:{Name:"{\"text\":\"New Player\",\"color\":\"aqua\",\"italic\":false}"},CustomModelData:101,EntityTag:{id:"armor_stand",Marker:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{id:"minecraft:melon_slice",Count:1b,tag:{Pos:[0.0d,0.0d,0.0d],Rotation:0.0f,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}},{},{},{}],Tags:["new_player"]}}