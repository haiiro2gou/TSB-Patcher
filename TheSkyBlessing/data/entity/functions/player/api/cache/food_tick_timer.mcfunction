#> entity:player/api/cache/food_tick_timer
#
# 対象のfoodTickTimerをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodTickTimer
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.foodTickTimer.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.foodTickTimer.Data set from entity @s foodTickTimer
# outputのstorageに移す
    data modify storage api: foodTickTimer set from storage indexstorage: _.DataCache.foodTickTimer.Data
