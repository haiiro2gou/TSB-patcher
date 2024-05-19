#> api:data_get/passengers
#
# 対象のPassengersをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Passengers
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Passengers.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/passengers_fetch
# outputのstorageに移す
    data modify storage api: Passengers set from storage indexstorage: _.DataCache.Passengers.Data
