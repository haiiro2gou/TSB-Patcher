#> api:data_get/food_level
#
# 対象のfoodLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodLevel
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.foodLevel.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.foodLevel.Data set from entity @s foodLevel
# outputのstorageに移す
    data modify storage api: foodLevel set from storage indexstorage: _.DataCache.foodLevel.Data
