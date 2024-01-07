#> indexstorage:push/.m
# @input args
#   id : int
# @within function indexstorage:push/

$data modify storage indexstorage: data[$(id)] set from storage indexstorage: _
