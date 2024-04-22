#> indexstorage:pull/
# @input as player
#   score @s IndexStorageID
# @api

# validate
    execute unless score @s IndexStorageID matches 0.. run function indexstorage:provide/
    execute if data storage indexstorage: _ run function indexstorage:push/
# データを回収する
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get @s IndexStorageID
    function indexstorage:pull/.m with storage indexstorage:core m
# リセット
    data remove storage indexstorage:core m
