#> asset:teleporter/42/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-199,Y:69,Z:22}] in overworld positioned -199 69 22 if entity @p[distance=..40] run function asset:teleporter/42/register