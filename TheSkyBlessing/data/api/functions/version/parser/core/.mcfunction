#> api:version/parser/core/
# @within function api:version/parser/

# 文字列を分割する
    data modify storage api: String.Base set from storage api: Argument.Version.String
    function api:version/parser/core/split/
# int配列となるように結合する
    function api:version/parser/core/concat/
    data modify storage api: Return.Version set from storage api: String.Version

# リセット
    data remove storage api: String
