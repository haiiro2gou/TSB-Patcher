#> lib:score_to_health_wrapper/set
#
# プレイヤーのHPをその値に設定します。
#
# 値は100倍で入れる必要があります。
#
# @input
#   as player
#   score $Set Argument
#   storage lib: Argument.DeathMessage? : TextComponent || TextComponent[]
# @api

#> temp
# @private
    #declare score_holder $Set

# セット
    scoreboard players operation @s ScoreToHealth = $Set Lib
    function indexstorage:pull/
    data modify storage indexstorage: _.LatestAttackInfo.Type set value 0
    data remove storage indexstorage: _.LatestAttackInfo.DeathMessage
    data modify storage indexstorage: _.LatestAttackInfo.DeathMessage set from storage lib: Argument.DeathMessage
# リセット
    scoreboard players reset $Set Lib
    # data remove storage lib: Argument.DeathMessage
