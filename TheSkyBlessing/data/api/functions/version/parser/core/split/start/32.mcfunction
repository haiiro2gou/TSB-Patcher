#> api:version/parser/core/split/start/32
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/32

data modify storage api: String.32 set string storage api: String.Base 0 32
function api:version/parser/core/split/32
data modify storage api: String.Base set string storage api: String.Base 32
scoreboard players remove $Length Temporary 32
execute if score $Length Temporary matches 32.. run function api:version/parser/core/split/start/32
