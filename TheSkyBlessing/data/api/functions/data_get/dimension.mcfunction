#> api:data_get/dimension
#
# 対象のDimensionをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Dimension
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Dimension.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Dimension.Data set from entity @s Dimension
# outputのstorageに移す
    data modify storage api: Dimension set from storage indexstorage: _.DataCache.Dimension.Data
