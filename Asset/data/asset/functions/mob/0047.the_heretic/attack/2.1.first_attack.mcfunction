#> asset:mob/0047.the_heretic/attack/2.1.first_attack
#
# 1度だけ発動する攻撃
#
# @within function asset:mob/0047.the_heretic/attack/2.attack

# テレポートする
    execute at @e[type=#lib:living,tag=Victim] rotated ~ -10 positioned ^ ^ ^3 facing entity @e[type=#lib:living,tag=Victim] eyes run tp @s ~ ~ ~

# 演出
    particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 100 force
    playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

# 装備変更
    replaceitem entity @s weapon stick{CustomModelData:219}

# 移動する
    scoreboard players set $VectorMagnitude Lib 150
    execute facing entity @e[type=#lib:living,tag=Victim] feet run function lib:motion/

# タグを消す
    tag @s remove 1B.First