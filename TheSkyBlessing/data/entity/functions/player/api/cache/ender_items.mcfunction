#> entity:player/api/cache/ender_items
#
# 対象のEnderItemsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: EnderItems
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.EnderItems.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.EnderItems.Data set from entity @s EnderItems
# outputのstorageに移す
    data modify storage api: EnderItems set from storage indexstorage: _.DataCache.EnderItems.Data
