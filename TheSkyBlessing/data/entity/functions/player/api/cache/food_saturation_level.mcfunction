#> entity:player/api/cache/food_saturation_level
#
# 対象のfoodSaturationLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: foodSaturationLevel
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.foodSaturationLevel.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.foodSaturationLevel.Data set from entity @s foodSaturationLevel
# outputのstorageに移す
    data modify storage api: foodSaturationLevel set from storage indexstorage: _.DataCache.foodSaturationLevel.Data
