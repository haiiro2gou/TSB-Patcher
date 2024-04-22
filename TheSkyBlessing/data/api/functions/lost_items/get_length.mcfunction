#> api:lost_items/get_length
#
# プレイヤーが失ったアイテムの数を取得します。
#
# @input as player
# @output result score MP
# @api

# EntityStorage呼び出し
    function indexstorage:pull/
# 取得する
    return run execute if data storage indexstorage: _.LostItems[]
