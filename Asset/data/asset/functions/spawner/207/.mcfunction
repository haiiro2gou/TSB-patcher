#> asset:spawner/207/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:338,Y:118,Z:-74}] in overworld positioned 338 118 -74 if entity @p[distance=..40] run function asset:island/207/register/register