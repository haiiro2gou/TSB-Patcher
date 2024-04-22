#> api:modifier/defense/thunder/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Thunder : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Thunder
data modify storage api: Return.Defense.Thunder set from storage indexstorage: _.Modifiers.Defense.Thunder
