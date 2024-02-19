#> api:version/parser/core/split/
# @within function api:version/parser/core/

# 文字列の長さを取得
    execute store result score $Length Temporary run data get storage api: String.Base

# 分割する
    execute if score $Length Temporary matches 1024.. run function api:version/parser/core/split/start/1024
    execute if score $Length Temporary matches 512.. run function api:version/parser/core/split/start/512
    execute if score $Length Temporary matches 256.. run function api:version/parser/core/split/start/256
    execute if score $Length Temporary matches 128.. run function api:version/parser/core/split/start/128
    execute if score $Length Temporary matches 64.. run function api:version/parser/core/split/start/64
    execute if score $Length Temporary matches 32.. run function api:version/parser/core/split/start/32
    execute if score $Length Temporary matches 16.. run function api:version/parser/core/split/start/16
    execute if score $Length Temporary matches 8.. run function api:version/parser/core/split/start/8
    execute if score $Length Temporary matches 4.. run function api:version/parser/core/split/start/4
    execute if score $Length Temporary matches 2.. run function api:version/parser/core/split/start/2
    execute if score $Length Temporary matches 1.. run function api:version/parser/core/split/start/1

# リセット
    scoreboard players reset $Length Temporary
