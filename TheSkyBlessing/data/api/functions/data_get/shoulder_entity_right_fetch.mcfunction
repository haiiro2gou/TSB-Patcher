#> api:data_get/shoulder_entity_right_fetch
#
#
#
# @within function api:data_get/shoulder_entity_right

data modify storage api: Temp set from entity @s ShoulderEntityRight
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.ShoulderEntityRight.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.ShoulderEntityRight.Data

data remove storage api: Temp
data remove storage api: ShoulderEntityRight
