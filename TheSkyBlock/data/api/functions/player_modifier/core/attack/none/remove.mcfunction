#> api:player_modifier/core/attack/none/remove
#
#
#
# @within function api:player_modifier/attack/none/remove

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.None
# 配列の初期化
    data modify storage api: NewModifiers set value []
# フィルタ
    function api:player_modifier/core/common/remove_modifier
# 新しい配列を戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Attack.None set from storage api: NewModifiers
# リセット
    data remove storage api: Modifiers
    data remove storage api: NewModifiers