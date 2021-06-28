#> asset_manager:sacred_treasure/triggers/dis_equip
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/core/data/pre_event_put/old
# 変更があるかチェック
    execute if entity @s[tag=!ChangeMainhand] run data modify storage asset:context id.mainhand set value -1
    execute if entity @s[tag=!ChangeOffhand] run data modify storage asset:context id.offhand set value -1
    execute if entity @s[tag=!ChangeHead] run data modify storage asset:context id.head set value -1
    execute if entity @s[tag=!ChangeChest] run data modify storage asset:context id.chest set value -1
    execute if entity @s[tag=!ChangeLegs] run data modify storage asset:context id.legs set value -1
    execute if entity @s[tag=!ChangeFeet] run data modify storage asset:context id.feet set value -1
# 単独トリガーで処理できるようにタグを付与する
    tag @s add DisEquip
# 神器側に受け渡し
    function #asset:sacred_treasure/change_equip
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/core/data/post_event_put/old
# リセット
    tag @s remove DisEquip