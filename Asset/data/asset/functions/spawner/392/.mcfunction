#> asset:spawner/392/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:120,Y:100,Z:127}] in the_end positioned 120 100 127 if entity @p[distance=..40] run function asset:island/392/register/register