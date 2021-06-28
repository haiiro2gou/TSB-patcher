#> asset:sacred_treasure/0607.u_and_w_06/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0607.u_and_w_06/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0607.u_and_w_06/3.main