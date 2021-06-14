#> asset:sacred_treasure/0615.censored/3.3.censored_sound
#
# ピー音を鳴らす処理
#
# @within function asset:sacred_treasure/0615.censored/**

# くっっっっっそやかましい音
    execute as @e[type=area_effect_cloud,tag=9V.CensoredSound] at @s run playsound minecraft:block.note_block.flute master @a[distance=..10] ~ ~ ~ 1 1.95
    execute as @e[type=area_effect_cloud,tag=9V.CensoredSound] at @s run playsound minecraft:block.note_block.flute master @a[distance=..10] ~ ~ ~ 1 1.9

# 音をぶち切る
    execute as @a at @s unless entity @e[type=area_effect_cloud,tag=9V.CensoredSound,distance=..10] run stopsound @s master minecraft:block.note_block.flute

# 再帰
    execute if entity @e[type=area_effect_cloud,tag=9V.CensoredSound,limit=1] run schedule function asset:sacred_treasure/0615.censored/3.3.censored_sound 1t
