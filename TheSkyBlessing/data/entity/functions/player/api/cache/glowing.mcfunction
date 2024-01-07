#> entity:player/api/cache/glowing
#
# 対象のGlowingをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Glowing
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Glowing.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Glowing.Data set from entity @s Glowing
# outputのstorageに移す
    data modify storage api: Glowing set from storage indexstorage: _.DataCache.Glowing.Data