#> indexstorage:hexadecimal/concat/
# @within function
#   indexstorage:hexadecimal/
#   indexstorage:hexadecimal/concat/

# データを結合
    data modify storage indexstorage:core string.left set from storage indexstorage:core hexadecimal[-1]
    data remove storage indexstorage:core hexadecimal[-1]
    data modify storage indexstorage:core string.right set from storage indexstorage:core hexadecimal[-1]
    data remove storage indexstorage:core hexadecimal[-1]
    function indexstorage:hexadecimal/concat/.m with storage indexstorage:core string
# ループ
    data remove storage indexstorage:core string
    execute if data storage indexstorage:core hexadecimal[1] run function indexstorage:hexadecimal/concat/
