#> indexstorage:hexadecimal/i_to_s
# @within function indexstorage:hexadecimal/for_each

execute if score $Digit Temporary matches 0 run data modify storage indexstorage:core hexadecimal append value "0"
execute if score $Digit Temporary matches 1 run data modify storage indexstorage:core hexadecimal append value "1"
execute if score $Digit Temporary matches 2 run data modify storage indexstorage:core hexadecimal append value "2"
execute if score $Digit Temporary matches 3 run data modify storage indexstorage:core hexadecimal append value "3"
execute if score $Digit Temporary matches 4 run data modify storage indexstorage:core hexadecimal append value "4"
execute if score $Digit Temporary matches 5 run data modify storage indexstorage:core hexadecimal append value "5"
execute if score $Digit Temporary matches 6 run data modify storage indexstorage:core hexadecimal append value "6"
execute if score $Digit Temporary matches 7 run data modify storage indexstorage:core hexadecimal append value "7"
execute if score $Digit Temporary matches 8 run data modify storage indexstorage:core hexadecimal append value "8"
execute if score $Digit Temporary matches 9 run data modify storage indexstorage:core hexadecimal append value "9"
execute if score $Digit Temporary matches 10 run data modify storage indexstorage:core hexadecimal append value "a"
execute if score $Digit Temporary matches 11 run data modify storage indexstorage:core hexadecimal append value "b"
execute if score $Digit Temporary matches 12 run data modify storage indexstorage:core hexadecimal append value "c"
execute if score $Digit Temporary matches 13 run data modify storage indexstorage:core hexadecimal append value "d"
execute if score $Digit Temporary matches 14 run data modify storage indexstorage:core hexadecimal append value "e"
execute if score $Digit Temporary matches 15 run data modify storage indexstorage:core hexadecimal append value "f"
