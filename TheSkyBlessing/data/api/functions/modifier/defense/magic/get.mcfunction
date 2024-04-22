#> api:modifier/defense/magic/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Magic : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Magic
data modify storage api: Return.Defense.Magic set from storage indexstorage: _.Modifiers.Defense.Magic
