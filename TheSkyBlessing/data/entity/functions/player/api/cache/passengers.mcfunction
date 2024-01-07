#> entity:player/api/cache/passengers
#
# 対象のPassengersをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Passengers
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Passengers.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Passengers.Data set from entity @s Passengers
# outputのstorageに移す
    data modify storage api: Passengers set from storage indexstorage: _.DataCache.Passengers.Data
