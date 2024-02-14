#> api:version/parser/core/split/start/16
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/16

data modify storage api: String.16 set string storage api: String.Base 0 16
function api:version/parser/core/split/16
data modify storage api: String.Base set string storage api: String.Base 16
scoreboard players remove $Length Temporary 16
execute if score $Length Temporary matches 16.. run function api:version/parser/core/split/start/16
