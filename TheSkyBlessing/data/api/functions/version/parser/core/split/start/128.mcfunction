#> api:version/parser/core/split/start/128
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/128

data modify storage api: String.128 set string storage api: String.Base 0 128
function api:version/parser/core/split/128
data modify storage api: String.Base set string storage api: String.Base 128
scoreboard players remove $Length Temporary 128
execute if score $Length Temporary matches 128.. run function api:version/parser/core/split/start/128
