#> api:data_get/silent_fetch
#
#
#
# @within function api:data_get/silent

data modify storage api: Temp set from entity @s Silent
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.Silent.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.Silent.Data

data remove storage api: Temp
data remove storage api: Silent
