# temp.#input_sin = input; temp.#output_sin = output
# input should be degrees * 1000
# output is also scaled by 1000

scoreboard players operation #input_sin temp %= #360000 constants

# sin(360 - x) = -sin(x)
execute if score #input_sin temp matches 180001..359999 run scoreboard players set #range_sin temp 3
execute if score #range_sin temp matches 3 run scoreboard players operation #input_sin temp -= #360000 constants
execute if score #range_sin temp matches 3 run scoreboard players operation #input_sin temp *= #-1 constants
execute if score #range_sin temp matches 3 run scoreboard players set #negative_sin temp 1
execute if score #range_sin temp matches 3 run scoreboard players set #range_sin temp 0

# sin(180 - x) = sin(x)
execute if score #input_sin temp matches 90001..180000 run scoreboard players set #range_sin temp 2
execute if score #range_sin temp matches 2 run scoreboard players operation #input_sin temp -= #180000 constants
execute if score #range_sin temp matches 2 run scoreboard players operation #input_sin temp *= #-1 constants
execute if score #range_sin temp matches 2 run scoreboard players set #range_sin temp 0

# lookup
execute if score #input_sin temp matches 0..499 run scoreboard players operation #output_sin temp = #sin0 constants
execute if score #input_sin temp matches 500..1499 run scoreboard players operation #output_sin temp = #sin1 constants
execute if score #input_sin temp matches 1500..2499 run scoreboard players operation #output_sin temp = #sin2 constants
execute if score #input_sin temp matches 2500..3499 run scoreboard players operation #output_sin temp = #sin3 constants
execute if score #input_sin temp matches 3500..4499 run scoreboard players operation #output_sin temp = #sin4 constants
execute if score #input_sin temp matches 4500..5499 run scoreboard players operation #output_sin temp = #sin5 constants
execute if score #input_sin temp matches 5500..6499 run scoreboard players operation #output_sin temp = #sin6 constants
execute if score #input_sin temp matches 6500..7499 run scoreboard players operation #output_sin temp = #sin7 constants
execute if score #input_sin temp matches 7500..8499 run scoreboard players operation #output_sin temp = #sin8 constants
execute if score #input_sin temp matches 8500..9499 run scoreboard players operation #output_sin temp = #sin9 constants
execute if score #input_sin temp matches 9500..10499 run scoreboard players operation #output_sin temp = #sin10 constants
execute if score #input_sin temp matches 10500..11499 run scoreboard players operation #output_sin temp = #sin11 constants
execute if score #input_sin temp matches 11500..12499 run scoreboard players operation #output_sin temp = #sin12 constants
execute if score #input_sin temp matches 12500..13499 run scoreboard players operation #output_sin temp = #sin13 constants
execute if score #input_sin temp matches 13500..14499 run scoreboard players operation #output_sin temp = #sin14 constants
execute if score #input_sin temp matches 14500..15499 run scoreboard players operation #output_sin temp = #sin15 constants
execute if score #input_sin temp matches 15500..16499 run scoreboard players operation #output_sin temp = #sin16 constants
execute if score #input_sin temp matches 16500..17499 run scoreboard players operation #output_sin temp = #sin17 constants
execute if score #input_sin temp matches 17500..18499 run scoreboard players operation #output_sin temp = #sin18 constants
execute if score #input_sin temp matches 18500..19499 run scoreboard players operation #output_sin temp = #sin19 constants
execute if score #input_sin temp matches 19500..20499 run scoreboard players operation #output_sin temp = #sin20 constants
execute if score #input_sin temp matches 20500..21499 run scoreboard players operation #output_sin temp = #sin21 constants
execute if score #input_sin temp matches 21500..22499 run scoreboard players operation #output_sin temp = #sin22 constants
execute if score #input_sin temp matches 22500..23499 run scoreboard players operation #output_sin temp = #sin23 constants
execute if score #input_sin temp matches 23500..24499 run scoreboard players operation #output_sin temp = #sin24 constants
execute if score #input_sin temp matches 24500..25499 run scoreboard players operation #output_sin temp = #sin25 constants
execute if score #input_sin temp matches 25500..26499 run scoreboard players operation #output_sin temp = #sin26 constants
execute if score #input_sin temp matches 26500..27499 run scoreboard players operation #output_sin temp = #sin27 constants
execute if score #input_sin temp matches 27500..28499 run scoreboard players operation #output_sin temp = #sin28 constants
execute if score #input_sin temp matches 28500..29499 run scoreboard players operation #output_sin temp = #sin29 constants
execute if score #input_sin temp matches 29500..30499 run scoreboard players operation #output_sin temp = #sin30 constants
execute if score #input_sin temp matches 30500..31499 run scoreboard players operation #output_sin temp = #sin31 constants
execute if score #input_sin temp matches 31500..32499 run scoreboard players operation #output_sin temp = #sin32 constants
execute if score #input_sin temp matches 32500..33499 run scoreboard players operation #output_sin temp = #sin33 constants
execute if score #input_sin temp matches 33500..34499 run scoreboard players operation #output_sin temp = #sin34 constants
execute if score #input_sin temp matches 34500..35499 run scoreboard players operation #output_sin temp = #sin35 constants
execute if score #input_sin temp matches 35500..36499 run scoreboard players operation #output_sin temp = #sin36 constants
execute if score #input_sin temp matches 36500..37499 run scoreboard players operation #output_sin temp = #sin37 constants
execute if score #input_sin temp matches 37500..38499 run scoreboard players operation #output_sin temp = #sin38 constants
execute if score #input_sin temp matches 38500..39499 run scoreboard players operation #output_sin temp = #sin39 constants
execute if score #input_sin temp matches 39500..40499 run scoreboard players operation #output_sin temp = #sin40 constants
execute if score #input_sin temp matches 40500..41499 run scoreboard players operation #output_sin temp = #sin41 constants
execute if score #input_sin temp matches 41500..42499 run scoreboard players operation #output_sin temp = #sin42 constants
execute if score #input_sin temp matches 42500..43499 run scoreboard players operation #output_sin temp = #sin43 constants
execute if score #input_sin temp matches 43500..44499 run scoreboard players operation #output_sin temp = #sin44 constants
execute if score #input_sin temp matches 44500..45000 run scoreboard players operation #output_sin temp = #sin45 constants

# sin(90 - x) = cos(x)
execute if score #input_sin temp matches 45001..90000 run scoreboard players set #range_sin temp 1
execute if score #range_sin temp matches 1 run scoreboard players operation #input_sin temp -= #90000 constants
execute if score #range_sin temp matches 1 run scoreboard players operation #input_sin temp *= #-1 constants
execute if score #range_sin temp matches 1 run scoreboard players operation #input_cos temp = #input_sin temp
execute if score #range_sin temp matches 1 run function player_models:math/cos
execute if score #range_sin temp matches 1 run scoreboard players operation #output_sin temp = #output_cos temp
execute if score #range_sin temp matches 1 run scoreboard players set #range_sin temp 0

execute if score #negative_sin temp matches 1 run scoreboard players operation #output_sin temp *= #-1 constants
scoreboard players set #negative_sin temp 0