#> indexstorage:push/
# @input as player
#   score @s IndexStorageID
#   storage
#       indexstorage:
#           _ : component
# @api

# validate
    execute if data storage indexstorage: _ unless data storage indexstorage: _.id run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"indexstorage: _内にidが存在しません。"}]

# push
    execute if data storage indexstorage: _.id run data modify storage indexstorage:core m.id set from storage indexstorage: _.id
    execute if data storage indexstorage: _.id run function indexstorage:push/.m with storage indexstorage:core m

# reset
    data remove storage indexstorage: _
    data remove storage indexstorage:core m
