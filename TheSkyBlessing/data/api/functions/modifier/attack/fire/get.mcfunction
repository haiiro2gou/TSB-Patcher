#> api:modifier/attack/fire/get
#
#
#
# @input as player
# @output storage api:
#   Return.Attack.Fire : double
# @api

function indexstorage:pull/
data remove storage api: Return.Attack.Fire
data modify storage api: Return.Attack.Fire set from storage indexstorage: _.Modifiers.Attack.Fire
