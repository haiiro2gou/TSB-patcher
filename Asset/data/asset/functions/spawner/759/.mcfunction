#> asset:spawner/759/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:198,Y:182,Z:-171}] in overworld positioned 198 182 -171 if entity @p[distance=..40] run function asset:island/759/register/register