#> api:mp/update_max
#
# プレイヤーの最大MPを更新します。
#
# @input
#   as player
#   storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MPMax
# @output
#   score @s MPMax
# @api

# Storage呼び出し
    function oh_my_dat:please
# 最大MP変更
    execute store result score @s MPMax run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.MaxMP 1
    scoreboard players operation @s MPMax < $0 Const