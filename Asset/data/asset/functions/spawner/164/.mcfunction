#> asset:spawner/164/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:island DPR[{D:overworld,X:-86,Y:62,Z:262}] in overworld positioned -86 62 262 if entity @p[distance=..40] run function asset:island/164/register/register