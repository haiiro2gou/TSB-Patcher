#> api:modifier/defense/base/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Base : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Base
data modify storage api: Return.Defense.Base set from storage indexstorage: _.Modifiers.Defense.Base
