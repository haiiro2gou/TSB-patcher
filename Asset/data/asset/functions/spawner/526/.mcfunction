#> asset:spawner/526/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:92,Y:31,Z:161}] in overworld positioned 92 31 161 if entity @p[distance=..40] run function asset:island/526/register/register