#> asset:spawner/052/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:241,Y:59,Z:60}] in overworld positioned 241 59 60 if entity @p[distance=..40] run function asset:island/052/register/register