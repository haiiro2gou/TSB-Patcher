#> api:data_get/uuid
#
# 対象のUUIDをstorageに軽量に取得します。
#
# @input as player
# @output storage api: UUID
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: UUID
# キャッシュされていなければ取得
    execute unless data storage indexstorage: _.DataCache.UUID.Data run data modify storage indexstorage: _.DataCache.UUID.Data set from entity @s UUID
# outputのstorageに移す
    data modify storage api: UUID set from storage indexstorage: _.DataCache.UUID.Data
