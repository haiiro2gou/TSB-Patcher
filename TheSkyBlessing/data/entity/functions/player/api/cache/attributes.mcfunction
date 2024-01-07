#> entity:player/api/cache/attributes
#
# 対象のAttributesをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Attributes
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Attributes.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Attributes.Data set from entity @s Attributes
# outputのstorageに移す
    data modify storage api: Attributes set from storage indexstorage: _.DataCache.Attributes.Data
