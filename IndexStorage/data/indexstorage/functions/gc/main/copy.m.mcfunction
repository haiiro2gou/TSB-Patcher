#> indexstorage:gc/main/copy.m
# @input args
#   id : int
# @within function indexstorage:gc/main/loop

$data modify storage indexstorage:core m.name set from storage indexstorage: data[$(id)].UUIDString