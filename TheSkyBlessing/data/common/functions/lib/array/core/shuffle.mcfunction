#> common:lib/array/core/shuffle
# @within function common:lib/array/**

execute store result score #Index Temporary run function ashen_lib:random/
scoreboard players operation #Index Temporary %= #ListSize Temporary
execute if score #Index Temporary matches 1.. run function common:lib/array/core/move
data modify storage lib: ArrayO append from storage lib: Array[-1]
data remove storage lib: Array[-1]
data modify storage lib: Array append from storage lib: Cache[]
data remove storage lib: Cache
scoreboard players remove #ListSize Temporary 1
execute if score #ListSize Temporary matches 1.. run function common:lib/array/core/shuffle