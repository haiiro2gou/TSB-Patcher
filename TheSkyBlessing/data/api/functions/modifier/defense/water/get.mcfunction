#> api:modifier/defense/water/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Water : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Water
data modify storage api: Return.Defense.Water set from storage indexstorage: _.Modifiers.Defense.Water
