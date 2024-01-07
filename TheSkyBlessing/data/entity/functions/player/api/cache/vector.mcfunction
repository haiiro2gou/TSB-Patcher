#> entity:player/api/cache/vector
#
#
#
# @output storage api: Return.Vector : [double] @ 3
# @api

# IndexStorage呼び出し
    function indexstorage:pull/
# コピー
    data modify storage api: Return.Vector set from storage indexstorage: _.PosDiff