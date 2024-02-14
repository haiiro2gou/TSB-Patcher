#> api:version/parser/core/split/128
# @within function
#   api:version/parser/core/split/start/128
#   api:version/parser/core/split/256

data modify storage api: String.64 set string storage api: String.128 0 64
function api:version/parser/core/split/64
data modify storage api: String.64 set string storage api: String.128 64
function api:version/parser/core/split/64
