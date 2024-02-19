#> api:version/parser/core/concat/s_to_i
# @within function api:version/parser/core/concat/

# 初期化
    scoreboard players set $IsPunc Temporary 0
    data modify storage api: String.Char set from storage api: String.Chars[0]

# 数値チェック
    execute if data storage api: String{Char:"0"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"0"} run scoreboard players set $Right Temporary 0
    execute if data storage api: String{Char:"1"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"1"} run scoreboard players set $Right Temporary 1
    execute if data storage api: String{Char:"2"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"2"} run scoreboard players set $Right Temporary 2
    execute if data storage api: String{Char:"3"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"3"} run scoreboard players set $Right Temporary 3
    execute if data storage api: String{Char:"4"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"4"} run scoreboard players set $Right Temporary 4
    execute if data storage api: String{Char:"5"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"5"} run scoreboard players set $Right Temporary 5
    execute if data storage api: String{Char:"6"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"6"} run scoreboard players set $Right Temporary 6
    execute if data storage api: String{Char:"7"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"7"} run scoreboard players set $Right Temporary 7
    execute if data storage api: String{Char:"8"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"8"} run scoreboard players set $Right Temporary 8
    execute if data storage api: String{Char:"9"} run scoreboard players set $IsPunc Temporary 1
    execute if data storage api: String{Char:"9"} run scoreboard players set $Right Temporary 9
