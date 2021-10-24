#> asset:sacred_treasure/0631.ice_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0631.ice_boots/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,631,3]
# 補正の削除
    function api:player_modifier/defense/water/remove

    playsound minecraft:block.glass.break master @a ~ ~ ~ 0.4 0.8 0

# フルセット効果削除
    execute if data storage asset:context id.all{head:628,chest:629,legs:630,feet:631} run function asset:sacred_treasure/0629.ice_armor/5.fullset_dis_equip
