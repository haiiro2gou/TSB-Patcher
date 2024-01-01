#> asset:artifact/example/give/1.trigger
#
# 神器の取得処理の呼び出し時に実行されるfunction
#
# @within tag/function asset:artifact/give

execute if data storage asset:context {id:2147483647} run function asset:artifact/example/give/2.give