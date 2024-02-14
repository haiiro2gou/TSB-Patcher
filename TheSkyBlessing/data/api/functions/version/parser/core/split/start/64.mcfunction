#> api:version/parser/core/split/start/64
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/64

data modify storage api: String.64 set string storage api: String.Base 0 64
function api:version/parser/core/split/64
data modify storage api: String.Base set string storage api: String.Base 64
scoreboard players remove $Length Temporary 64
execute if score $Length Temporary matches 64.. run function api:version/parser/core/split/start/64
