#> asset:spawner/371/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:241,Y:175,Z:125}] in overworld positioned 241 175 125 if entity @p[distance=..40] run function asset:island/371/register/register