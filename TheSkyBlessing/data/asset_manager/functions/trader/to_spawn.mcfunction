#> asset_manager:trader/to_spawn
#
# 実行者のTraderをEntityStorage内に保存された既定座標に移動させます
#
# @within function asset_manager:trader/tick/4_interval

# EntityStorage呼び出し
    function indexstorage:pull/
# 移動
    data modify entity @s Pos set from storage indexstorage: _.TraderData.DefaultPos
    data modify entity @s Rotation[0] set from storage indexstorage: _.TraderData.DefaultRotation
