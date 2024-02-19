#> api:version/parser/core/split/start/8
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/8

data modify storage api: String.8 set string storage api: String.Base 0 8
function api:version/parser/core/split/8
data modify storage api: String.Base set string storage api: String.Base 8
scoreboard players remove $Length Temporary 8
execute if score $Length Temporary matches 8.. run function api:version/parser/core/split/start/8
