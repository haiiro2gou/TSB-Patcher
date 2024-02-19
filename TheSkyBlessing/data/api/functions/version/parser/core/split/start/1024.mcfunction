#> api:version/parser/core/split/start/1024
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/1024

data modify storage api: String.1024 set string storage api: String.Base 0 1024
function api:version/parser/core/split/1024
data modify storage api: String.Base set string storage api: String.Base 1024
scoreboard players remove $Length Temporary 1024
execute if score $Length Temporary matches 1024.. run function api:version/parser/core/split/start/1024
