#> api:version/parser/core/split/256
# @within function
#   api:version/parser/core/split/start/256
#   api:version/parser/core/split/512

data modify storage api: String.128 set string storage api: String.256 0 128
function api:version/parser/core/split/128
data modify storage api: String.128 set string storage api: String.256 128
function api:version/parser/core/split/128
