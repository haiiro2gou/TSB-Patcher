#> api:data_get/custom_name_visible
#
# 対象のCustomNameVisibleをstorageに軽量に取得します。
#
# @input as player
# @output storage api: CustomNameVisible
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.CustomNameVisible.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/custom_name_visible_fetch
# outputのstorageに移す
    data modify storage api: CustomNameVisible set from storage indexstorage: _.DataCache.CustomNameVisible.Data
