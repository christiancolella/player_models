# create scoreboard objectives
scoreboard objectives add temp dummy
scoreboard objectives add constants dummy

scoreboard objectives add id dummy

scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

scoreboard objectives add rot_y dummy
scoreboard objectives add cos_y dummy
scoreboard objectives add sin_y dummy

scoreboard objectives add click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add execute dummy

# set values of constants
scoreboard players set #-1 constants -1
scoreboard players set #1000 constants 1000
scoreboard players set #90000 constants 90000
scoreboard players set #180000 constants 180000
scoreboard players set #360000 constants 360000

## set cos values
scoreboard players set #cos0 constants 1000
scoreboard players set #cos1 constants 999
scoreboard players set #cos2 constants 999
scoreboard players set #cos3 constants 998
scoreboard players set #cos4 constants 997
scoreboard players set #cos5 constants 996
scoreboard players set #cos6 constants 994
scoreboard players set #cos7 constants 992
scoreboard players set #cos8 constants 990
scoreboard players set #cos9 constants 987
scoreboard players set #cos10 constants 984
scoreboard players set #cos11 constants 981
scoreboard players set #cos12 constants 978
scoreboard players set #cos13 constants 974
scoreboard players set #cos14 constants 970
scoreboard players set #cos15 constants 965
scoreboard players set #cos16 constants 961
scoreboard players set #cos17 constants 956
scoreboard players set #cos18 constants 951
scoreboard players set #cos19 constants 945
scoreboard players set #cos20 constants 939
scoreboard players set #cos21 constants 933
scoreboard players set #cos22 constants 927
scoreboard players set #cos23 constants 920
scoreboard players set #cos24 constants 913
scoreboard players set #cos25 constants 906
scoreboard players set #cos26 constants 898
scoreboard players set #cos27 constants 891
scoreboard players set #cos28 constants 882
scoreboard players set #cos29 constants 874
scoreboard players set #cos30 constants 866
scoreboard players set #cos31 constants 857
scoreboard players set #cos32 constants 848
scoreboard players set #cos33 constants 838
scoreboard players set #cos34 constants 829
scoreboard players set #cos35 constants 819
scoreboard players set #cos36 constants 809
scoreboard players set #cos37 constants 798
scoreboard players set #cos38 constants 788
scoreboard players set #cos39 constants 777
scoreboard players set #cos40 constants 766
scoreboard players set #cos41 constants 754
scoreboard players set #cos42 constants 743
scoreboard players set #cos43 constants 731
scoreboard players set #cos44 constants 719
scoreboard players set #cos45 constants 707

## set sin values
scoreboard players set #sin0 constants 0
scoreboard players set #sin1 constants 17
scoreboard players set #sin2 constants 34
scoreboard players set #sin3 constants 52
scoreboard players set #sin4 constants 69
scoreboard players set #sin5 constants 87
scoreboard players set #sin6 constants 104
scoreboard players set #sin7 constants 121
scoreboard players set #sin8 constants 139
scoreboard players set #sin9 constants 156
scoreboard players set #sin10 constants 173
scoreboard players set #sin11 constants 190
scoreboard players set #sin12 constants 207
scoreboard players set #sin13 constants 224
scoreboard players set #sin14 constants 241
scoreboard players set #sin15 constants 258
scoreboard players set #sin16 constants 275
scoreboard players set #sin17 constants 292
scoreboard players set #sin18 constants 309
scoreboard players set #sin19 constants 325
scoreboard players set #sin20 constants 342
scoreboard players set #sin21 constants 358
scoreboard players set #sin22 constants 374
scoreboard players set #sin23 constants 390
scoreboard players set #sin24 constants 406
scoreboard players set #sin25 constants 422
scoreboard players set #sin26 constants 438
scoreboard players set #sin27 constants 453
scoreboard players set #sin28 constants 469
scoreboard players set #sin29 constants 484
scoreboard players set #sin30 constants 499
scoreboard players set #sin31 constants 515
scoreboard players set #sin32 constants 529
scoreboard players set #sin33 constants 544
scoreboard players set #sin34 constants 559
scoreboard players set #sin35 constants 573
scoreboard players set #sin36 constants 587
scoreboard players set #sin37 constants 601
scoreboard players set #sin38 constants 615
scoreboard players set #sin39 constants 629
scoreboard players set #sin40 constants 642
scoreboard players set #sin41 constants 656
scoreboard players set #sin42 constants 669
scoreboard players set #sin43 constants 681
scoreboard players set #sin44 constants 694
scoreboard players set #sin45 constants 707

# add teams
team add black
team add dark_blue
team add dark_green
team add dark_aqua
team add dark_red
team add dark_purple
team add gold
team add gray
team add dark_gray
team add blue
team add green
team add aqua
team add red
team add light_purple
team add yellow
team add white

team modify black color black
team modify dark_blue color dark_blue
team modify dark_green color dark_green
team modify dark_aqua color dark_aqua
team modify dark_red color dark_red
team modify dark_purple color dark_purple
team modify gold color gold
team modify gray color gray
team modify dark_gray color dark_gray
team modify blue color blue
team modify green color green
team modify aqua color aqua
team modify red color red
team modify light_purple color light_purple
team modify yellow color yellow
team modify white color white