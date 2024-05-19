#> api:data_get/no_ai_fetch
#
#
#
# @within function api:data_get/no_ai

data modify storage api: Temp set from entity @s NoAI
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.NoAI.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.NoAI.Data

data remove storage api: Temp
data remove storage api: NoAI
