#> indexstorage:gc/main/exec.m
# @input args
#   name : string
# @within function indexstorage:gc/main/loop

$execute if score $(name) IndexStorageID matches 0.. run return 0
function indexstorage:deprive/ with storage indexstorage:core m
