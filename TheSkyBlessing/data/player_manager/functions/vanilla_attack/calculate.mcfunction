#> player_manager:vanilla_attack/calculate
#
# 計算
#
# @within function core:handler/attack

#> private
# @private
    #declare score_holder $Damage

# 攻撃処理
    scoreboard players operation $Damage Temporary = @p[tag=this] AttackEvent
    scoreboard players operation $Damage Temporary *= $10 Const
    scoreboard players operation @s MobHealth -= $Damage Temporary
    execute if score @s MobHealth matches ..0 run tag @p[tag=this] add Killer
    execute if score @s MobHealth matches ..0 as @p[tag=Killer] run advancement grant @s only core:handler/killed
    execute if score @s MobHealth matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=Killer]
    execute if score @s MobHealth matches ..0 run kill @s
# 回復
    execute unless score @s MobHealth matches ..0 run data modify entity @s Health set value 512f

# リセット
    scoreboard players reset $Damage Temporary
