#> api:data_get/sleeping_y
#
# 対象のSleepingYをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepingY
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SleepingY.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/sleeping_y_fetch
# outputのstorageに移す
    data modify storage api: SleepingY set from storage indexstorage: _.DataCache.SleepingY.Data
