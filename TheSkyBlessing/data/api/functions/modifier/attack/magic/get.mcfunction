#> api:modifier/attack/magic/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Magic : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Magic
data modify storage api: Return.Attack.Magic set from storage indexstorage: _.Modifiers.Attack.Magic
