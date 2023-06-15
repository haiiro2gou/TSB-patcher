#> asset:mob/0046.clock_of_despair/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0046.clock_of_despair/death/1.trigger

kill @e[type=armor_stand,tag=1A.ClockHand]
kill @e[type=armor_stand,tag=1A.SkillMarker]
kill @e[type=glow_item_frame,tag=1A.ClockItemFrame]

# ボスドロ
    data modify storage api: Argument.ID set value 837
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id