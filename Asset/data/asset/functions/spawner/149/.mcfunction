#> asset:spawner/149/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:22,Y:81,Z:244}] in overworld positioned 22 81 244 if entity @p[distance=..40] run function asset:island/149/register/register