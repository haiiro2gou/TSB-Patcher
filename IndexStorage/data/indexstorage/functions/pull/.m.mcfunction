#> indexstorage:pull/.m
# @input args
#   id : int
# @within function
#   indexstorage:pull/
#   indexstorage:pull/from_id

$data modify storage indexstorage: _ set from storage indexstorage: data[$(id)]
