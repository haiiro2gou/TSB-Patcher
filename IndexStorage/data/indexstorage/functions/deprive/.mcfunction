#> indexstorage:deprive/
# @input score @s IndexStorageID
# @api

execute if score @s IndexStorageID matches 0.. store result storage indexstorage:core m.id int 1 run scoreboard players get @s IndexStorageID
function indexstorage:deprive/.m with storage indexstorage:core m

data remove storage indexstorage:core m
