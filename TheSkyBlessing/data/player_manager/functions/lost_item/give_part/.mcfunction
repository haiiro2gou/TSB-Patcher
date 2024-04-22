#> player_manager:lost_item/give_part/
#
# 没収したアイテムの一部を慈悲をもって返却します
#
# @within function api:lost_items/give

# セッション開ける
    function lib:array/session/open
# UserStorage呼び出し
    function indexstorage:pull/
# picks用にlib: Arrayに入れる
    data modify storage lib: Array set from storage indexstorage: _.LostItems
# 返却するスロット数だけ乱数を生成する
    data modify storage lib: Picks set value []
    execute store result score $ListLength Temporary if data storage lib: Array[]
    function player_manager:lost_item/give_part/generate_index
# 添字配列を元にアイテムを取得する
    function lib:array/picks
# もう現Arrayは要らないのでUserStorageに戻す
    data modify storage indexstorage: _.LostItems set from storage lib: Array
# Arrayに移す
    data modify storage lib: Array set from storage lib: Elements
# 実行座標から降らす
    function player_manager:lost_item/give_part/falling_item
# リセット
    function lib:array/session/close
    scoreboard players reset $GiveCount Temporary
    scoreboard players reset $ListLength Temporary
    scoreboard players reset $Index Temporary
