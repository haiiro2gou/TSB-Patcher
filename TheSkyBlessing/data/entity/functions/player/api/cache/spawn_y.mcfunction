#> entity:player/api/cache/spawn_y
#
# 対象のSpawnYをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnY
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SpawnY.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.SpawnY.Data set from entity @s SpawnY
# outputのstorageに移す
    data modify storage api: SpawnY set from storage indexstorage: _.DataCache.SpawnY.Data
