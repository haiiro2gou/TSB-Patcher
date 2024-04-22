#> indexstorage:hexadecimal/for_each
# @within function
#   indexstorage:hexadecimal/
#   indexstorage:hexadecimal/for_each

# 数値を取得
    execute store result score $Geta Temporary run data get storage indexstorage:core UUIDInt[-1]
    execute if score $Geta Temporary matches ..-1 run scoreboard players set $isNegative Temporary 1
    execute if score $isNegative Temporary matches 1 run scoreboard players add $Geta Temporary 1073741824
    execute if score $isNegative Temporary matches 1 run scoreboard players add $Geta Temporary 1073741824
# 桁毎に処理
    # 1
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 2
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 3
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 4
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 5
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 6
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 7
        scoreboard players operation $Digit Temporary = $Geta Temporary
        scoreboard players operation $Digit Temporary %= $16 Const
        scoreboard players operation $Geta Temporary /= $16 Const
        function indexstorage:hexadecimal/i_to_s
    # 8
        scoreboard players operation $Digit Temporary = $Geta Temporary
        execute if score $isNegative Temporary matches 1 run scoreboard players add $Digit Temporary 8
        scoreboard players operation $Digit Temporary %= $16 Const
        function indexstorage:hexadecimal/i_to_s
# リセット
    scoreboard players reset $Digit
    scoreboard players reset $Geta
    scoreboard players reset $isNegative
    data remove storage indexstorage:core UUIDInt[-1]
    execute if data storage indexstorage:core UUIDInt[0] run function indexstorage:hexadecimal/for_each
