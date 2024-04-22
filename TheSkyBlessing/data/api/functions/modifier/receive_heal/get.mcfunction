#> api:modifier/receive_heal/get
#
#
#
# @input as player
# @output storage api:
#   Return.ReceiveHeal : double
# @api

function indexstorage:pull/
data remove storage api: Return.ReceiveHeal
data modify storage api: Return.ReceiveHeal set from storage indexstorage: _.Modifiers.ReceiveHeal
