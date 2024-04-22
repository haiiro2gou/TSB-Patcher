#> indexstorage:pull/from_id
# @input as player
#   score $ IndexStorageID
# @api

# validate
    execute if data storage indexstorage: _ run function indexstorage:push/
# データを回収する
    execute store result storage indexstorage:core m.id int 1 run scoreboard players get $ IndexStorageID
    execute if data storage indexstorage:core m.id run function indexstorage:pull/.m with storage indexstorage:core m
# リセット
    scoreboard players reset $ IndexStorageID
    data remove storage indexstorage:core m
