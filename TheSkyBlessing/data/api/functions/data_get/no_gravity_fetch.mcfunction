#> api:data_get/no_gravity_fetch
#
#
#
# @within function api:data_get/no_gravity

data modify storage api: Temp set from entity @s NoGravity
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.NoGravity.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.NoGravity.Data

data remove storage api: Temp
data remove storage api: NoGravity
