#> asset:teleporter/43/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-182,Y:153,Z:112}] in overworld positioned -182 153 112 if entity @p[distance=..40] run function asset:teleporter/43/register