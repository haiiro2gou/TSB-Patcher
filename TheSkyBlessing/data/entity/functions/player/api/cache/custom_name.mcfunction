#> entity:player/api/cache/custom_name
#
# 対象のCustomNameをstorageに軽量に取得します。
#
# @input as player
# @output storage api: CustomName
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.CustomName.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.CustomName.Data set from entity @s CustomName
# outputのstorageに移す
    data modify storage api: CustomName set from storage indexstorage: _.DataCache.CustomName.Data
