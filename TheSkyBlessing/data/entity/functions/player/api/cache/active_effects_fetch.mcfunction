#> entity:player/api/cache/active_effects_fetch
#
#
#
# @within function entity:player/api/cache/active_effects

data modify storage api: Temp set from entity @s active_effects
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.active_effects.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.active_effects.Data

data remove storage api: Temp
data remove storage api: active_effects