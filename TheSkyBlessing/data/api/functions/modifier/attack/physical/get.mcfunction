#> api:modifier/attack/physical/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Physical : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Physical
data modify storage api: Return.Attack.Physical set from storage indexstorage: _.Modifiers.Attack.Physical
