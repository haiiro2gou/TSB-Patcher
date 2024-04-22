#> api:modifier/max_mp/get
#
#
#
# @input as player
# @output storage api:
#   Return.MaxMP : double
# @api

function indexstorage:pull/
data remove storage api: Return.MaxMP
execute store result storage api: Return.MaxMP double 1 run data get storage indexstorage: _.Modifiers.MaxMP
