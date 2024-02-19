#> api:version/parser/core/concat/
# @within function
#   api:version/parser/core/
#   api:version/parser/core/concat/

# validate
    execute unless data storage api: String.Version run data modify storage api: String.Version set value [I;-1]

# 変数取得
    execute store result score $Left Temporary run data get storage api: String.Version[-1] 1
    function api:version/parser/core/concat/s_to_i
    execute if score $IsPunc Temporary matches 0 unless score $Left Temporary matches -1 run data modify storage api: String.Version append value 0
    execute if score $IsPunc Temporary matches 1 if score $Left Temporary matches -1 run scoreboard players set $Left Temporary 0
    execute if score $IsPunc Temporary matches 1 run scoreboard players operation $Left Temporary *= $10 Const
    execute if score $IsPunc Temporary matches 1 run scoreboard players operation $Left Temporary += $Right Temporary
    execute if score $IsPunc Temporary matches 1 store result storage api: String.Version[-1] int 1 run scoreboard players get $Left Temporary

# リセット
    scoreboard players reset $IsPunc
    scoreboard players reset $Left
    scoreboard players reset $Right
# ループ
    data remove storage api: String.Chars[0]
    execute if data storage api: String.Chars[0] run function api:version/parser/core/concat/
