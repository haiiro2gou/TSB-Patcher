#> api:version/check/core/
# @within function api:version/check/

#> private
# @private
    #declare score_holder $LengthA
    #declare score_holder $LengthB

# デフォルト値
    scoreboard players set $Success Temporary 1

# minimumを取得
    data modify storage api: Argument.Version.String set from storage api: Argument.Version.Min
    function api:version/parser/
    data modify storage api: Version.Min set from storage api: Return.Version
# maximumを取得
    execute unless data storage api: Argument.Version{Max:"inf"} run data modify storage api: Argument.Version.String set from storage api: Argument.Version.Max
    execute unless data storage api: Argument.Version{Max:"inf"} run function api:version/parser/
    execute unless data storage api: Argument.Version{Max:"inf"} run data modify storage api: Version.Max set from storage api: Return.Version
# targetを取得
    data modify storage api: Argument.Version.String set from storage api: Argument.Version.Target
    function api:version/parser/
    data modify storage api: Version.Target set from storage api: Return.Version

# バージョン比較
    # 要素数を比較
        execute store result score $LengthA Temporary if data storage api: Version.Min[]
        execute store result score $LengthB Temporary if data storage api: Version.Target[]
        execute unless score $LengthA Temporary = $LengthB Temporary run scoreboard players set $Success Temporary 0
        execute unless data storage api: Argument.Version{Max:"inf"} store result score $LengthA Temporary if data storage api: Version.Max[]
        execute unless data storage api: Argument.Version{Max:"inf"} unless score $LengthA Temporary = $LengthB Temporary run scoreboard players set $Success Temporary 0
    # 大小を比較
        execute if score $Success Temporary matches 1 run function api:version/check/core/foreach
# 結果を代入
    execute if score $Success Temporary matches 1 run data modify storage api: Return.Compatible set value true
    execute if score $Success Temporary matches 0 run data modify storage api: Return.Compatible set value false

# リセット
    data remove storage api: Version
    scoreboard players reset $Success Temporary
    scoreboard players reset $LengthA Temporary
    scoreboard players reset $LengthB Temporary
    scoreboard players reset $NotEqualMin Temporary
    scoreboard players reset $NotEqualMax Temporary
    scoreboard players reset $Minimum Temporary
    scoreboard players reset $Maximum Temporary
    scoreboard players reset $Target Temporary
