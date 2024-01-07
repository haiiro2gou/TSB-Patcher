#> entity:player/api/cache/spawn_x
#
# 対象のSpawnXをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnX
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SpawnX.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.SpawnX.Data set from entity @s SpawnX
# outputのstorageに移す
    data modify storage api: SpawnX set from storage indexstorage: _.DataCache.SpawnX.Data
