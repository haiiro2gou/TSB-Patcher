#> common:lib/array/move
#
# 配列をキャッシュへ移動します。
#
# @input storage lib:
#   T extends any
#   Array: [T] @ N
#   操作する配列データ
#   Argument.Index: int
#   目的の要素のindex
# @output storage lib:
#   Array: [T] @ (N - Index)
#   最後の要素が目的の要素になった配列
#   Cache: [T] @ Index
#   移動されたデータ
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"common:lib/array/のセッションが開かれずに利用されています。","color":"white"}]

# 動かす回数を算出する
    execute store result score #Index Temporary if data storage lib: Array[]
    scoreboard players remove #Index Temporary 1
    execute store result score #Argument.Index Temporary run data get storage lib: Argument.Index
    scoreboard players operation #Index Temporary -= #Argument.Index Temporary
# 再帰的に動かす
    execute if score #Index Temporary matches 1.. run function common:lib/array/core/move

# リセット
    data remove storage lib: Argument.Index
    scoreboard players reset #Argument.Index Temporary
    scoreboard players reset #Index Temporary