#> api:version/check/core/foreach
# @within function
#   api:version/check/core/
#   api:version/check/core/foreach

# デフォルト値
    scoreboard players set $NotEqualMin Temporary 0
    scoreboard players set $NotEqualMax Temporary 1

# データ取得
    execute store result score $Minimum Temporary run data get storage api: Version.Min[0] 1
    execute unless data storage api: Argument.Version{Max:"inf"} store result score $Maximum Temporary run data get storage api: Version.Max[0] 0
    execute store result score $Target Temporary run data get storage api: Version.Target[0] 1
# 比較
    # execute if score $Minimum Temporary < $Target Temporary run
    execute if score $Minimum Temporary = $Target Temporary run scoreboard players set $NotEqualMin Temporary 0
    execute if score $Minimum Temporary > $Target Temporary run scoreboard players set $Success Temporary 0
    execute unless data storage api: Argument.Version{Max:"inf"} if score $Maximum Temporary < $Target Temporary run scoreboard players set $Success Temporary 0
    execute unless data storage api: Argument.Version{Max:"inf"} if score $Maximum Temporary = $Target Temporary run scoreboard players set $NotEqualMax Temporary 0
    # execute unless data storage api: Argument.Version{Max:"inf"} if score $Maximum Temporary > $Target Temporary run

# ループ
    scoreboard players operation $NotEqualMin Temporary *= $NotEqualMax Temporary
    data remove storage api: Version.Min[0]
    data remove storage api: Version.Max[0]
    data remove storage api: Version.Target[0]
    execute if data storage api: Version.Target[0] if score $Success Temporary matches 1 if score $NotEqualMin Temporary matches 1 run function api:version/check/core/foreach
