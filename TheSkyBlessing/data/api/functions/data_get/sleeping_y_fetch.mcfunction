#> api:data_get/sleeping_y_fetch
#
#
#
# @within function api:data_get/sleeping_y

data modify storage api: Temp set from entity @s SleepingY
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.SleepingY.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.SleepingY.Data

data remove storage api: Temp
data remove storage api: SleepingY
