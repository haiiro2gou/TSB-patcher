#> asset:spawner/17/register
#
# スポナーの定義データ
#
# @within function asset:spawner/17/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR set value {D:overworld,X:241,Y:59,Z:44}

# ID (int)
    data modify storage asset:teleporter ID set value 17
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register