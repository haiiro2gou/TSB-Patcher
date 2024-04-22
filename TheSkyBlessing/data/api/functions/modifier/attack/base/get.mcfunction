#> api:modifier/attack/base/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Base : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Base
data modify storage api: Return.Attack.Base set from storage indexstorage: _.Modifiers.Attack.Base
