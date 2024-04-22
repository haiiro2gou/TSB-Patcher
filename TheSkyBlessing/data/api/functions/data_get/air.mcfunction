#> api:data_get/air
#
# 対象のAirをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Air
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: Air
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Air.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Air.Data set from entity @s Air
# outputのstorageに移す
    data modify storage api: Air set from storage indexstorage: _.DataCache.Air.Data
