#> common:lib/array/core/revert
# @within function common:lib/array/**

data modify storage lib: Array append from storage lib: Cache[-1]
data remove storage lib: Cache[-1]
execute if data storage lib: Cache[0] run function common:lib/array/core/revert