#> indexstorage:provide/.m
# @input args
#   id : int
# @within function indexstorage:provide/

$data modify storage indexstorage:core temp.id set value $(id)
data modify storage indexstorage:core temp.UUIDString set from storage indexstorage:core UUIDString
$data modify storage indexstorage: data[$(id)] set from storage indexstorage:core temp
data remove storage indexstorage:core temp
