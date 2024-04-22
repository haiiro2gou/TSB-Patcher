#> indexstorage:hexadecimal/
#
# UUID (int array) -> UUID (string)
#
# @input storage indexstorage:core
#   UUIDInt : int @ 4
# @output storage indexstorage:core
#   UUIDString : string
# @api

# 初期化
    data modify storage indexstorage:core hexadecimal set value []
    data remove storage indexstorage:core UUIDString
# 実行
    execute if data storage indexstorage:core UUIDInt[0] run function indexstorage:hexadecimal/for_each
    execute if data storage indexstorage:core hexadecimal[1] run data modify storage indexstorage:core hexadecimal insert 12 value "-"
    execute if data storage indexstorage:core hexadecimal[1] run data modify storage indexstorage:core hexadecimal insert 17 value "-"
    execute if data storage indexstorage:core hexadecimal[1] run data modify storage indexstorage:core hexadecimal insert 22 value "-"
    execute if data storage indexstorage:core hexadecimal[1] run data modify storage indexstorage:core hexadecimal insert 27 value "-"
    execute if data storage indexstorage:core hexadecimal[1] run function indexstorage:hexadecimal/concat/
    execute if data storage indexstorage:core hexadecimal[0] run data modify storage indexstorage:core UUIDString set from storage indexstorage:core hexadecimal[0]
# リセット
    data remove storage indexstorage:core UUIDInt
    data remove storage indexstorage:core hexadecimal
