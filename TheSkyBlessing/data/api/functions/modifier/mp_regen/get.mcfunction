#> api:modifier/mp_regen/get
#
#
#
# @input as player
# @output storage api:
#   Return.MPRegen : double
# @api

function indexstorage:pull/
data remove storage api: Return.MPRegen
data modify storage api: Return.MPRegen set from storage indexstorage: _.Modifiers.MPRegen
