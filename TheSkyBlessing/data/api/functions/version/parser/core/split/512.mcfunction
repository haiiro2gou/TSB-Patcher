#> api:version/parser/core/split/512
# @within function
#   api:version/parser/core/split/start/512
#   api:version/parser/core/split/1024

data modify storage api: String.256 set string storage api: String.512 0 256
function api:version/parser/core/split/256
data modify storage api: String.256 set string storage api: String.512 256
function api:version/parser/core/split/256
