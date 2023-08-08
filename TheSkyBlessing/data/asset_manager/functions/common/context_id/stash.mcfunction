#> asset_manager:common/context_id/stash
#
#
#
# @within function
#   api:artifact/*/from_id
#   api:entity/mob/effect/core/give
#   api:mob/core/summon
#   api:spawner/subtract_hp
#   asset:*/extends
#   asset:*/super.*
#   asset_manager:artifact/give
#   asset_manager:effect/events/*/call_super_method
#   asset_manager:mob/triggers/*/call_super_method

# スタックに新しい空間を追加する
    data modify storage asset:context IDStashStack append value {}
# idを退避(Valueに突っ込んでいるのは、idのデータ型が一意に定まらず特定の型のリストとして持てないため)
    data modify storage asset:context IDStashStack[-1].Value set from storage asset:context id
# idを掃除
    data remove storage asset:context id