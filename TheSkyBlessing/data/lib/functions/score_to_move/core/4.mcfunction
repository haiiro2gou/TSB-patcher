#> lib:score_to_move/core/4
#
# 二分探索的にスコアを座標に変換します
#
# @within lib:score_to_move/core/5

scoreboard players operation #Move Lib += #Move Lib
execute if score #Move Lib matches 0.. run function lib:score_to_move/core/3
execute if score #Move Lib matches ..-1 positioned ^ ^ ^0.0016 run function lib:score_to_move/core/3
