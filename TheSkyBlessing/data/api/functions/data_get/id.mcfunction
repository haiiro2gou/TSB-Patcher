#> api:data_get/id
#
# 対象のidをstorageに軽量に取得します。
#
# @input as player
# @output storage api: id
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.id.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run function api:data_get/id_fetch
# outputのstorageに移す
    data modify storage api: id set from storage indexstorage: _.DataCache.id.Data
