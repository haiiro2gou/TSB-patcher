#> asset:spawner/116/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:154,Y:76,Z:266}] in overworld positioned 154 76 266 if entity @p[distance=..40] run function asset:island/116/register/register