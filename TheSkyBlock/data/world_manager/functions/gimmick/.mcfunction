#> world_manager:gimmick/
#
#
#
# @within function core:tick/

# シャード加工機
    execute if entity @a[scores={InArea=2,InSubArea=1},limit=1] run function world_manager:gimmick/shard_processor/
# テレポーター
    function world_manager:gimmick/teleporter/tick