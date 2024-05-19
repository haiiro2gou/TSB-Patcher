#> api:data_get/custom_name_fetch
#
#
#
# @within function api:data_get/custom_name

data modify storage api: Temp set from entity @s CustomName
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.CustomName.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.CustomName.Data

data remove storage api: Temp
data remove storage api: CustomName
