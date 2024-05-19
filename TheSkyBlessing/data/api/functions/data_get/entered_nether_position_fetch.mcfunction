#> api:data_get/entered_nether_position_fetch
#
#
#
# @within function api:data_get/entered_nether_position

data modify storage api: Temp set from entity @s enteredNetherPosition
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.enteredNetherPosition.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.enteredNetherPosition.Data

data remove storage api: Temp
data remove storage api: enteredNetherPosition
