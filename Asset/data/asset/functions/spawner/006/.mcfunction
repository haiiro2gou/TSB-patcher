#> asset:spawner/006/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-29,Y:8,Z:42}] in overworld positioned -29 8 42 if entity @p[distance=..40] run function asset:island/006/register/register