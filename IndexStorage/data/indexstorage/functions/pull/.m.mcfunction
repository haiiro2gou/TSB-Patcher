#> indexstorage:pull/.m
# @input args
#   id : int
# @within function indexstorage:pull/

$data modify storage indexstorage: _ set from storage indexstorage: data[$(id)]
