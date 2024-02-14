#> api:version/parser/core/split/start/2
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/2

data modify storage api: String.2 set string storage api: String.Base 0 2
function api:version/parser/core/split/2
data modify storage api: String.Base set string storage api: String.Base 2
scoreboard players remove $Length Temporary 2
execute if score $Length Temporary matches 2.. run function api:version/parser/core/split/start/2
