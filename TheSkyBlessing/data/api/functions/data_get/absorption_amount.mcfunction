#> api:data_get/absorption_amount
#
# 対象のAbsorptionAmountをstorageに軽量に取得します。
#
# @input as player
# @output storage api: AbsorptionAmount
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: AbsorptionAmount
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.AbsorptionAmount.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.AbsorptionAmount.Data set from entity @s AbsorptionAmount
# outputのstorageに移す
    data modify storage api: AbsorptionAmount set from storage indexstorage: _.DataCache.AbsorptionAmount.Data
