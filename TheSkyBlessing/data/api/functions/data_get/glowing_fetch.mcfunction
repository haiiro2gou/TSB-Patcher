#> api:data_get/glowing_fetch
#
#
#
# @within function api:data_get/glowing

data modify storage api: Temp set from entity @s Glowing
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.Glowing.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.Glowing.Data

data remove storage api: Temp
data remove storage api: Glowing
