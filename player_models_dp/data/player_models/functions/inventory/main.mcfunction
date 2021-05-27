# transitions
execute as @s[scores={click=1}] run function player_models:inventory/transitions

# states
execute if score @s inventory matches -1 run function player_models:inventory/exit

execute if score @s inventory matches 1 run function player_models:inventory/home

execute if score @s inventory matches 2 run function player_models:inventory/position/main
execute if score @s inventory matches 3 run function player_models:inventory/position/x
execute if score @s inventory matches 4 run function player_models:inventory/position/y
execute if score @s inventory matches 5 run function player_models:inventory/position/z

execute if score @s inventory matches 6 run function player_models:inventory/rotation/y

execute if score @s inventory matches 10 run function player_models:inventory/pose

## head
execute if score @s inventory matches 11 run function player_models:inventory/rotation/main
execute if score @s inventory matches 12 run function player_models:inventory/rotation/x
execute if score @s inventory matches 13 run function player_models:inventory/rotation/y
execute if score @s inventory matches 14 run function player_models:inventory/rotation/z

## body
execute if score @s inventory matches 15 run function player_models:inventory/rotation/main
execute if score @s inventory matches 16 run function player_models:inventory/rotation/x
execute if score @s inventory matches 17 run function player_models:inventory/rotation/y
execute if score @s inventory matches 18 run function player_models:inventory/rotation/z

## right arm
execute if score @s inventory matches 19 run function player_models:inventory/rotation/main
execute if score @s inventory matches 20 run function player_models:inventory/rotation/x
execute if score @s inventory matches 21 run function player_models:inventory/rotation/y
execute if score @s inventory matches 22 run function player_models:inventory/rotation/z

## left arm
execute if score @s inventory matches 23 run function player_models:inventory/rotation/main
execute if score @s inventory matches 24 run function player_models:inventory/rotation/x
execute if score @s inventory matches 25 run function player_models:inventory/rotation/y
execute if score @s inventory matches 26 run function player_models:inventory/rotation/z

## right leg
execute if score @s inventory matches 27 run function player_models:inventory/rotation/main
execute if score @s inventory matches 28 run function player_models:inventory/rotation/x
execute if score @s inventory matches 29 run function player_models:inventory/rotation/y
execute if score @s inventory matches 30 run function player_models:inventory/rotation/z

## left leg
execute if score @s inventory matches 31 run function player_models:inventory/rotation/main
execute if score @s inventory matches 32 run function player_models:inventory/rotation/x
execute if score @s inventory matches 33 run function player_models:inventory/rotation/y
execute if score @s inventory matches 34 run function player_models:inventory/rotation/z
