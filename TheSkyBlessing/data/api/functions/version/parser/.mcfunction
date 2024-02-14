#> api:version/parser/
# @input storage api:
#   Argument.Version.String : string
# @output storage api:
#   Return.Version : int @ 1..
# @api

# validate
    execute unless data storage api: Argument.Version.String run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"}]
# exec
    execute if data storage api: Argument.Version.String run function api:version/parser/core/
# reset
    data remove storage api: Argument.Version.String
