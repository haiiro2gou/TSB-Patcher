#> common:lib/array/core/math/sqr
# @within function
#   common:lib/array/math/sqr
#   common:lib/array/core/math/sqr

# 計算/結果代入
    data modify storage lib: Array append value -1d
    execute store result score #Temp Temporary run data get storage lib: CopiedArray[-1] 100
    scoreboard players operation #Temp Temporary *= #Temp Temporary
    execute store result storage lib: Array[-1] double 0.0001 run scoreboard players get #Temp Temporary

# 末尾削除
    data remove storage lib: CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage lib: CopiedArray[0] run function common:lib/array/core/math/sqr