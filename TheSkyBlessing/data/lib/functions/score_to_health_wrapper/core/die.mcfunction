#> lib:score_to_health_wrapper/core/die
#
#
#
# @within function lib:score_to_health_wrapper/proc/

# 独自の死亡メッセージを出すためにバニラのを無効化する
    gamerule showDeathMessages false
# ばいばい。
    kill @s
# 死亡メッセージ読み込み用準備
    function indexstorage:pull/
    data modify storage lib: Return.AttackerName set from storage indexstorage: _.LatestAttackInfo.Name
# 死亡メッセージ
    execute if data storage indexstorage: _.LatestAttackInfo.DeathMessage unless data storage indexstorage: _.LatestAttackInfo.DeathMessage[-1] run tellraw @a {"storage":"indexstorage:","nbt":"_.LatestAttackInfo.DeathMessage","interpret": true}
    execute if data storage indexstorage: _.LatestAttackInfo.DeathMessage[-1] run function lib:score_to_health_wrapper/core/show_custom_death_message
    execute unless data storage indexstorage: _.LatestAttackInfo.DeathMessage run function lib:score_to_health_wrapper/core/show_common_death_message
# リセット
    data remove storage indexstorage: _.LatestAttackInfo
    data remove storage lib: Return.AttackerName
    gamerule showDeathMessages true
    scoreboard players reset @s ScoreToHealth
