#> asset:spawner/191/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:89,Y:163,Z:-115}] in overworld positioned 89 163 -115 if entity @p[distance=..40] run function asset:island/191/register/register