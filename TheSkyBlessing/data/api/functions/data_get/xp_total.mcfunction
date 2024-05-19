#> api:data_get/xp_total
#
# 対象のXpTotalをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpTotal
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.XpTotal.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.XpTotal.Data set from entity @s XpTotal
# outputのstorageに移す
    data modify storage api: XpTotal set from storage indexstorage: _.DataCache.XpTotal.Data
