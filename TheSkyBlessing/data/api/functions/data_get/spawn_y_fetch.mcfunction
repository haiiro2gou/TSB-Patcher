#> api:data_get/spawn_y_fetch
#
#
#
# @within function api:data_get/spawn_y

data modify storage api: Temp set from entity @s SpawnY
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.SpawnY.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.SpawnY.Data

data remove storage api: Temp
data remove storage api: SpawnY
