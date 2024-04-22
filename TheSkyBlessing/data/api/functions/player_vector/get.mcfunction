#> api:player_vector/get
#
#
#
# @output storage api: Return.Vector : [double] @ 3
# @api

# EntityStorage呼び出し
    function indexstorage:pull/
# コピー
    data modify storage api: Return.Vector set from storage indexstorage: _.PlayerPosDiff
