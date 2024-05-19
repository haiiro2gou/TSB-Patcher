#> api:data_get/root_vehicle_fetch
#
#
#
# @within function api:data_get/root_vehicle

data modify storage api: Temp set from entity @s RootVehicle
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.RootVehicle.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.RootVehicle.Data

data remove storage api: Temp
data remove storage api: RootVehicle
