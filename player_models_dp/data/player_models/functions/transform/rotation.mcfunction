data modify entity @s[tag=head] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.Head[0]
execute if entity @s[tag=head] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.Head[1] 1000
execute if entity @s[tag=head] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=head] rot_y += @s temp
execute if entity @s[tag=head] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=head] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.Head[2]

data modify entity @s[tag=body] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.Body[0]
execute if entity @s[tag=body] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.Body[1] 1000
execute if entity @s[tag=body] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=body] rot_y += @s temp
execute if entity @s[tag=body] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=body] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.Body[2]

data modify entity @s[tag=right_arm] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.RightArm[0]
execute if entity @s[tag=right_arm] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.RightArm[1] 1000
execute if entity @s[tag=right_arm] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=right_arm] rot_y += @s temp
execute if entity @s[tag=right_arm] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=right_arm] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.RightArm[2]

data modify entity @s[tag=left_arm] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.LeftArm[0]
execute if entity @s[tag=left_arm] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.LeftArm[1] 1000
execute if entity @s[tag=left_arm] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=left_arm] rot_y += @s temp
execute if entity @s[tag=left_arm] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=left_arm] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.LeftArm[2]

data modify entity @s[tag=right_leg] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.RightLeg[0]
execute if entity @s[tag=right_leg] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.RightLeg[1] 1000
execute if entity @s[tag=right_leg] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=right_leg] rot_y += @s temp
execute if entity @s[tag=right_leg] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=right_leg] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.RightLeg[2]

data modify entity @s[tag=left_leg] Pose.Head[0] set from entity @s ArmorItems[0].tag.Pose.LeftLeg[0]
execute if entity @s[tag=left_leg] store result score @s rot_y run data get entity @s ArmorItems[0].tag.Pose.LeftLeg[1] 1000
execute if entity @s[tag=left_leg] store result score @s temp run data get entity @s ArmorItems[0].tag.Rotation 1000
scoreboard players operation @s[tag=left_leg] rot_y += @s temp
execute if entity @s[tag=left_leg] store result entity @s Pose.Head[1] float 0.001 run scoreboard players get @s rot_y
data modify entity @s[tag=left_leg] Pose.Head[2] set from entity @s ArmorItems[0].tag.Pose.LeftLeg[2]

