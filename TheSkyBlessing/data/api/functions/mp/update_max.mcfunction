#> api:mp/update_max
#
# プレイヤーの最大MPを更新します。
#
# @input
#   as player
#   storage indexstorage: _.Modifiers.MaxMP
# @output
#   score @s MPMax
# @api

# Storage呼び出し
    function indexstorage:pull/
# 最大MP変更
    execute store result score @s MPMax run data get storage indexstorage: _.Modifiers.MaxMP 1
    scoreboard players operation @s MPMax > $0 Const
