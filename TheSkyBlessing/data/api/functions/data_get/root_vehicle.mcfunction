#> api:data_get/root_vehicle
#
# 対象のRootVehicleをstorageに軽量に取得します。
#
# @input as player
# @output storage api: RootVehicle
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: RootVehicle
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.RootVehicle.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.RootVehicle.Data set from entity @s RootVehicle
# outputのstorageに移す
    data modify storage api: RootVehicle set from storage indexstorage: _.DataCache.RootVehicle.Data
