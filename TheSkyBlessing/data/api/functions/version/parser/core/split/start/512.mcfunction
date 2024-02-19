#> api:version/parser/core/split/start/512
# @within function
#   api:version/parser/core/split/
#   api:version/parser/core/split/start/512

data modify storage api: String.512 set string storage api: String.Base 0 512
function api:version/parser/core/split/512
data modify storage api: String.Base set string storage api: String.Base 512
scoreboard players remove $Length Temporary 512
execute if score $Length Temporary matches 512.. run function api:version/parser/core/split/start/512
