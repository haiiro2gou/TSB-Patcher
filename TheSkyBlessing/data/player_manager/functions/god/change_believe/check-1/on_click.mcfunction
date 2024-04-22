#> player_manager:god/change_believe/check-1/on_click
#
#
#
# @within function player_manager:god/change_believe/check-1/listener

# エラー値
    execute unless score @s Believe matches 1..2 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe matches 1 run function indexstorage:pull/
    execute if score @s Believe matches 1 unless data storage indexstorage: _.LostItems[0] run function player_manager:god/change_believe/on_change
    execute if score @s Believe matches 1 if data storage indexstorage: _.LostItems[0] run function player_manager:god/change_believe/check-2/
    execute if score @s Believe matches 2 run function player_manager:god/change_believe/on_check_blessing
# リセット
    execute unless score @s Believe matches 0 run scoreboard players reset @s Believe
