#> api:version/parser/core/split/start/256
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/256

data modify storage api: String.256 set string storage api: String.Base 0 256
function api:version/parser/core/split/256
data modify storage api: String.Base set string storage api: String.Base 256
scoreboard players remove $Length Temporary 256
execute if score $Length Temporary matches 256.. run function api:version/parser/core/split/start/256
