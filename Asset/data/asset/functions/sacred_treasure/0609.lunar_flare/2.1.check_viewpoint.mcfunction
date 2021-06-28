#> asset:sacred_treasure/0609.lunar_flare/2.1.check_viewpoint
#
# 視点先みるやつ
#
# @within function asset:sacred_treasure/0609.lunar_flare/2.check_condition

# 演出をかける
    execute anchored eyes positioned ^ ^ ^1 run function lib:particle/circle/composter/0.5
    execute anchored eyes positioned ^ ^ ^1.4 run function lib:particle/circle/composter/1
    execute anchored eyes positioned ^ ^ ^2.4 run function lib:particle/circle/composter/0.5
    execute anchored eyes positioned ^ ^ ^2.4 run particle composter ~ ~ ~ 0 0 0 0 1 force

# 視点検知
    tag @p add Watcher
#　敵を狙っている時にのみ発動
    # この時点で相手にタグを付与する
        execute positioned ^ ^ ^20.1 as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..20] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=Watcher,limit=1] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add 9P.Target
        tag @e[type=#lib:living,tag=!Uninterferable,distance=30..] remove 9P.Target
    # できてなかったらcanusedタグ消しちゃう
        execute unless entity @e[type=#lib:living,tag=9P.Target] run tag @s remove CanUsed
# 終了
    tag @p remove Watcher