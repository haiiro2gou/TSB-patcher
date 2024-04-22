#> api:modifier/core/heal/remove
#
#
#
# @within function api:modifier/heal/remove

# UserStorage呼び出し
    function indexstorage:pull/
# 無ければ入れる
    data modify storage api: Modifiers set from storage indexstorage: _.Modifiers.Modifier.Heal
# 配列の初期化
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
# フィルタ
    function api:modifier/core/common/remove_modifier
# 新しい配列を戻す
    data modify storage api: Modifiers set from storage api: NewModifiers
    data modify storage indexstorage: _.Modifiers.Modifier.Heal set from storage api: Modifiers
# データの更新
    data modify storage api: Base set from storage indexstorage: _.Modifiers.Base.Heal
    function api:modifier/core/common/update_modifier/
    data modify storage indexstorage: _.Modifiers.Heal set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: NewModifiers
