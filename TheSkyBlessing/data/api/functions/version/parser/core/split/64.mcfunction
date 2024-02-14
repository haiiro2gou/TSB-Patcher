#> api:version/parser/core/split/64
# @within function
#   api:version/parser/core/split/start/64
#   api:version/parser/core/split/128

data modify storage api: String.32 set string storage api: String.64 0 32
function api:version/parser/core/split/32
data modify storage api: String.32 set string storage api: String.64 32
function api:version/parser/core/split/32
