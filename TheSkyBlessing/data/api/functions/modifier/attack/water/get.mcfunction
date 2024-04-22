#> api:modifier/attack/water/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Water : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Water
data modify storage api: Return.Attack.Water set from storage indexstorage: _.Modifiers.Attack.Water
