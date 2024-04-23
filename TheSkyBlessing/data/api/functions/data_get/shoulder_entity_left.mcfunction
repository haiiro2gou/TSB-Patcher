#> api:data_get/shoulder_entity_left
#
# 対象のShoulderEntityLeftをstorageに軽量に取得します。
#
# @input as player
# @output storage api: ShoulderEntityLeft
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: ShoulderEntityLeft
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.ShoulderEntityLeft.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.ShoulderEntityLeft.Data set from entity @s ShoulderEntityLeft
# outputのstorageに移す
    data modify storage api: ShoulderEntityLeft set from storage indexstorage: _.DataCache.ShoulderEntityLeft.Data
