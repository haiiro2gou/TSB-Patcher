#> api:modifier/max_health/get
#
#
#
# @input as player
# @output storage api:
#   Return.MaxHealth : double
# @api

function indexstorage:pull/
data remove storage api: Return.MaxHealth
data modify storage api: Return.MaxHealth set from storage indexstorage: _.Modifiers.MaxHealth
