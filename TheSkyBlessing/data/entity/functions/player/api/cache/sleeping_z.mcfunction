#> entity:player/api/cache/sleeping_z
#
# 対象のSleepingZをstorageに軽量に取得します。
#
# @input as player
# @output storage api: SleepingZ
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.SleepingZ.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.SleepingZ.Data set from entity @s SleepingZ
# outputのstorageに移す
    data modify storage api: SleepingZ set from storage indexstorage: _.DataCache.SleepingZ.Data
