#> asset:spawner/179/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:169,Y:82,Z:36}] in overworld positioned 169 82 36 if entity @p[distance=..40] run function asset:island/179/register/register