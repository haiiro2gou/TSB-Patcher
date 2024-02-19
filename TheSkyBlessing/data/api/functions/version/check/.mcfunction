#> api:version/check/
# @input storage api:
#   Argument.Version.Min : string
#   Argument.Version.Max? : string (default: "inf")
#   Argument.Version.Target : string
# @output storage api:
#   Return.Compatible : boolean
# @api

# validate
    execute unless data storage api: Argument.Version.Min run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Version.Min","color":"red"}]
    execute unless data storage api: Argument.Version.Max run data modify storage api: Argument.Version.Max set value "inf"
    execute unless data storage api: Argument.Version.Target run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Version.Target","color":"red"}]
# exec
    execute if data storage api: Argument.Version.Min if data storage api: Argument.Version.Target run function api:version/check/core/
# reset
    data remove storage api: Argument.Version.Min
    data remove storage api: Argument.Version.Max
    data remove storage api: Argument.Version.Target
