#> common:lib/array/core/reverse
# @within function common:lib/array/**

execute store result score #Index Temporary if data storage lib: Array[]
function common:lib/array/core/move
data modify storage lib: Array set from storage lib: Cache
data remove storage lib: Cache
scoreboard players reset #Index Temporary