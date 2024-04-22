#> api:data_get/spawn_z
#
# 対象のSpawnZをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SpawnZ
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: SpawnZ
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SpawnZ.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.SpawnZ.Data set from entity @s SpawnZ
# outputのstorageに移す
    data modify storage api: SpawnZ set from storage indexstorage: _.DataCache.SpawnZ.Data
