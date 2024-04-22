#> api:modifier/heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.Heal : double
# @api

function indexstorage:pull/
data remove storage api: Return.Heal
data modify storage api: Return.Heal set from storage indexstorage: _.Modifiers.Heal
