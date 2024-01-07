#> entity:player/api/cache/spawn_forced
#
# 対象のSpawnForcedをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnForced
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SpawnForced.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.SpawnForced.Data set from entity @s SpawnForced
# outputのstorageに移す
    data modify storage api: SpawnForced set from storage indexstorage: _.DataCache.SpawnForced.Data
