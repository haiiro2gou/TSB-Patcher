#> api:modifier/defense/physical/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Physical : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Physical
data modify storage api: Return.Defense.Physical set from storage indexstorage: _.Modifiers.Defense.Physical
