#> asset:sacred_treasure/lib/check_condition/feet
#
# ブーツの神器の基礎的な発動条件をチェックします
#
# 発動可能な場合実行者に`CanUsed`のtagが付与されます。
#
# @output tag @s CanUsed
# @within function asset:sacred_treasure/*/2.check_condition

data modify storage asset:sacred_treasure TargetSlot set value 'feet'
function asset_manager:sacred_treasures/core/use/check