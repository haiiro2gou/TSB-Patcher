#> api:data_get/motion
#
# 対象のMotionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Motion
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Motion.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Motion.Data set from entity @s Motion
# outputのstorageに移す
    data modify storage api: Motion set from storage indexstorage: _.DataCache.Motion.Data
