#> api:data_get/sleeping_x
#
# 対象のSleepingXをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepingX
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SleepingX.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/sleeping_x_fetch
# outputのstorageに移す
    data modify storage api: SleepingX set from storage indexstorage: _.DataCache.SleepingX.Data
