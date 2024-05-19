#> api:data_get/team_fetch
#
#
#
# @within function api:data_get/team

data modify storage api: Temp set from entity @s Team
execute if data storage api: Temp run data modify storage indexstorage: _.DataCache.Team.Data set from storage api: Temp
execute unless data storage api: Temp run data remove storage indexstorage: _.DataCache.Team.Data

data remove storage api: Temp
data remove storage api: Team
