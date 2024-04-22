#> indexstorage:push/
# @input as player
#   storage indexstorage:
#       _ : component
# @api

# ストレージ内部に挿入
    execute if data storage indexstorage: _.id store result storage indexstorage:core m.id int 1 run data get storage indexstorage: _.id
    execute if data storage indexstorage: _.id run function indexstorage:push/.m with storage indexstorage:core m
# リセット
    data remove storage indexstorage: _
    data remove storage indexstorage:core m
