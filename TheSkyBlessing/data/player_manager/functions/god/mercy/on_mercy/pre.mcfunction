#> player_manager:god/mercy/on_mercy/pre
#
#
#
# @within function player_manager:god/mercy/on_click

# UserStorage呼び出し
    function indexstorage:pull/
# 失ったアイテムが無いならメッセージ
    execute unless data storage indexstorage: _.LostItems[0] run tellraw @s [{"text":"今は慈悲を乞う必要は無さそうだ...","color":"light_purple"}]
# 失ったアイテムがあればチェック
    execute if data storage indexstorage: _.LostItems[0] run function player_manager:god/mercy/on_mercy/check
