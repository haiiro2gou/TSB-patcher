#> asset:spawner/480/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:the_end,X:31,Y:94,Z:1930}] in the_end positioned 31 94 1930 if entity @p[distance=..40] run function asset:island/480/register/register