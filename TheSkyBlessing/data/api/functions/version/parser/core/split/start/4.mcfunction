#> api:version/parser/core/split/start/4
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/4

data modify storage api: String.4 set string storage api: String.Base 0 4
function api:version/parser/core/split/4
data modify storage api: String.Base set string storage api: String.Base 4
scoreboard players remove $Length Temporary 4
execute if score $Length Temporary matches 4.. run function api:version/parser/core/split/start/4
