# temp.#input_cos = input; temp.#output_cos = output
# input should be degrees * 1000
# output is also scaled by 1000

scoreboard players operation #input_cos temp %= #360000 constants

# cos(360 - x) = cos(x)
execute if score #input_cos temp matches 180001..359999 run scoreboard players set #range_cos temp 3
execute if score #range_cos temp matches 3 run scoreboard players operation #input_cos temp -= #360000 constants
execute if score #range_cos temp matches 3 run scoreboard players operation #input_cos temp *= #-1 constants
execute if score #range_cos temp matches 3 run scoreboard players set #range_cos temp 0

# cos(180 - x) = -cos(x)
execute if score #input_cos temp matches 90001..180000 run scoreboard players set #range_cos temp 2
execute if score #range_cos temp matches 2 run scoreboard players operation #input_cos temp -= #180000 constants
execute if score #range_cos temp matches 2 run scoreboard players operation #input_cos temp *= #-1 constants
execute if score #range_cos temp matches 2 run scoreboard players set #negative_cos temp 1
execute if score #range_cos temp matches 2 run scoreboard players set #range_cos temp 0

# lookup from table
execute if score #input_cos temp matches 0..499 run scoreboard players operation #output_cos temp = #cos0 constants
execute if score #input_cos temp matches 500..1499 run scoreboard players operation #output_cos temp = #cos1 constants
execute if score #input_cos temp matches 1500..2499 run scoreboard players operation #output_cos temp = #cos2 constants
execute if score #input_cos temp matches 2500..3499 run scoreboard players operation #output_cos temp = #cos3 constants
execute if score #input_cos temp matches 3500..4499 run scoreboard players operation #output_cos temp = #cos4 constants
execute if score #input_cos temp matches 4500..5499 run scoreboard players operation #output_cos temp = #cos5 constants
execute if score #input_cos temp matches 5500..6499 run scoreboard players operation #output_cos temp = #cos6 constants
execute if score #input_cos temp matches 6500..7499 run scoreboard players operation #output_cos temp = #cos7 constants
execute if score #input_cos temp matches 7500..8499 run scoreboard players operation #output_cos temp = #cos8 constants
execute if score #input_cos temp matches 8500..9499 run scoreboard players operation #output_cos temp = #cos9 constants
execute if score #input_cos temp matches 9500..10499 run scoreboard players operation #output_cos temp = #cos10 constants
execute if score #input_cos temp matches 10500..11499 run scoreboard players operation #output_cos temp = #cos11 constants
execute if score #input_cos temp matches 11500..12499 run scoreboard players operation #output_cos temp = #cos12 constants
execute if score #input_cos temp matches 12500..13499 run scoreboard players operation #output_cos temp = #cos13 constants
execute if score #input_cos temp matches 13500..14499 run scoreboard players operation #output_cos temp = #cos14 constants
execute if score #input_cos temp matches 14500..15499 run scoreboard players operation #output_cos temp = #cos15 constants
execute if score #input_cos temp matches 15500..16499 run scoreboard players operation #output_cos temp = #cos16 constants
execute if score #input_cos temp matches 16500..17499 run scoreboard players operation #output_cos temp = #cos17 constants
execute if score #input_cos temp matches 17500..18499 run scoreboard players operation #output_cos temp = #cos18 constants
execute if score #input_cos temp matches 18500..19499 run scoreboard players operation #output_cos temp = #cos19 constants
execute if score #input_cos temp matches 19500..20499 run scoreboard players operation #output_cos temp = #cos20 constants
execute if score #input_cos temp matches 20500..21499 run scoreboard players operation #output_cos temp = #cos21 constants
execute if score #input_cos temp matches 21500..22499 run scoreboard players operation #output_cos temp = #cos22 constants
execute if score #input_cos temp matches 22500..23499 run scoreboard players operation #output_cos temp = #cos23 constants
execute if score #input_cos temp matches 23500..24499 run scoreboard players operation #output_cos temp = #cos24 constants
execute if score #input_cos temp matches 24500..25499 run scoreboard players operation #output_cos temp = #cos25 constants
execute if score #input_cos temp matches 25500..26499 run scoreboard players operation #output_cos temp = #cos26 constants
execute if score #input_cos temp matches 26500..27499 run scoreboard players operation #output_cos temp = #cos27 constants
execute if score #input_cos temp matches 27500..28499 run scoreboard players operation #output_cos temp = #cos28 constants
execute if score #input_cos temp matches 28500..29499 run scoreboard players operation #output_cos temp = #cos29 constants
execute if score #input_cos temp matches 29500..30499 run scoreboard players operation #output_cos temp = #cos30 constants
execute if score #input_cos temp matches 30500..31499 run scoreboard players operation #output_cos temp = #cos31 constants
execute if score #input_cos temp matches 31500..32499 run scoreboard players operation #output_cos temp = #cos32 constants
execute if score #input_cos temp matches 32500..33499 run scoreboard players operation #output_cos temp = #cos33 constants
execute if score #input_cos temp matches 33500..34499 run scoreboard players operation #output_cos temp = #cos34 constants
execute if score #input_cos temp matches 34500..35499 run scoreboard players operation #output_cos temp = #cos35 constants
execute if score #input_cos temp matches 35500..36499 run scoreboard players operation #output_cos temp = #cos36 constants
execute if score #input_cos temp matches 36500..37499 run scoreboard players operation #output_cos temp = #cos37 constants
execute if score #input_cos temp matches 37500..38499 run scoreboard players operation #output_cos temp = #cos38 constants
execute if score #input_cos temp matches 38500..39499 run scoreboard players operation #output_cos temp = #cos39 constants
execute if score #input_cos temp matches 39500..40499 run scoreboard players operation #output_cos temp = #cos40 constants
execute if score #input_cos temp matches 40500..41499 run scoreboard players operation #output_cos temp = #cos41 constants
execute if score #input_cos temp matches 41500..42499 run scoreboard players operation #output_cos temp = #cos42 constants
execute if score #input_cos temp matches 42500..43499 run scoreboard players operation #output_cos temp = #cos43 constants
execute if score #input_cos temp matches 43500..44499 run scoreboard players operation #output_cos temp = #cos44 constants
execute if score #input_cos temp matches 44500..45000 run scoreboard players operation #output_cos temp = #cos45 constants

# cos(90 - x) = sin(x)
execute if score #input_cos temp matches 45001..90000 run scoreboard players set #range_cos temp 1
execute if score #range_cos temp matches 1 run scoreboard players operation #input_cos temp -= #90000 constants
execute if score #range_cos temp matches 1 run scoreboard players operation #input_cos temp *= #-1 constants
execute if score #range_cos temp matches 1 run scoreboard players operation #input_sin temp = #input_cos temp
execute if score #range_cos temp matches 1 run function player_models:math/sin
execute if score #range_cos temp matches 1 run scoreboard players operation #output_cos temp = #output_sin temp
execute if score #range_cos temp matches 1 run scoreboard players set #range_cos temp 0

execute if score #negative_cos temp matches 1 run scoreboard players operation #output_cos temp *= #-1 constants
scoreboard players set #negative_cos temp 0