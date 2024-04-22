#> api:modifier/defense/fire/get
#
#
#
# @input as player
# @output storage api:
#   Return.Defense.Fire : double
# @api

function indexstorage:pull/
data remove storage api: Return.Defense.Fire
data modify storage api: Return.Defense.Fire set from storage indexstorage: _.Modifiers.Defense.Fire
