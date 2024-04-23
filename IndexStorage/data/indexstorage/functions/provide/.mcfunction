#> indexstorage:provide/
# @api

# 未使用idチェック
    execute unless data storage indexstorage:core UnusedID[-1] store result score @s IndexStorageID run scoreboard players add $StorageIDIndex IndexStorage 1
    execute unless data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage: data append value {}
    execute if data storage indexstorage:core UnusedID[-1] run function lib:array/session/open
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage lib: Array set from storage indexstorage:core UnusedID
    execute if data storage indexstorage:core UnusedID[-1] run function lib:array/sort_ascend
    execute if data storage indexstorage:core UnusedID[-1] run data modify storage indexstorage:core UnusedID set from storage lib: Array
    execute if data storage indexstorage:core UnusedID[-1] run function lib:array/session/close
    execute if data storage indexstorage:core UnusedID[-1] store result score @s IndexStorageID run data get storage indexstorage:core UnusedID[0]
    execute if data storage indexstorage:core UnusedID[-1] run data remove storage indexstorage:core UnusedID[0]
# ストレージ割り当て
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s IndexStorageID
    data modify storage indexstorage:core UUIDInt set from entity @s UUID
    function indexstorage:hexadecimal/
    function indexstorage:provide/.m with storage indexstorage:core m
    tag @s add HasStorage
# リセット
    data remove storage indexstorage:core m