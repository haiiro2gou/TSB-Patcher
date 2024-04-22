#> api:modifier/attack/thunder/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Thunder : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Thunder
data modify storage api: Return.Attack.Thunder set from storage indexstorage: _.Modifiers.Attack.Thunder
