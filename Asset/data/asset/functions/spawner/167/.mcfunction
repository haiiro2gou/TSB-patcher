#> asset:spawner/167/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-93,Y:182,Z:244}] in overworld positioned -93 182 244 if entity @p[distance=..40] run function asset:island/167/register/register