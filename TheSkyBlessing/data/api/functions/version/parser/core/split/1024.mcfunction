#> api:version/parser/core/split/1024
# @within function
#   api:version/parser/core/split/start/1024

data modify storage api: String.512 set string storage api: String.1024 0 512
function api:version/parser/core/split/512
data modify storage api: String.512 set string storage api: String.1024 512
function api:version/parser/core/split/512
