#> asset_manager:artifact/use/item/has_remain
#
# 耐久値を減少させます
#
# @input
#   as player
#   storage asset:artifact TargetItems : [ItemData]
# @within function
#   asset_manager:artifact/check/.m
#   asset_manager:artifact/use/item/.m

#> ScoreHolder
# @private
    #declare score_holder $Remain

# 対象スロットの残り使用回数取得
    execute store result score $Remain Temporary run data get storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount
# 減算
    scoreboard players remove $Remain Temporary 1
# アイテム更新処理
    execute store result storage asset:artifact TargetItems[-1].tag.TSB.RemainingCount int 1 run scoreboard players get $Remain Temporary
    execute if score $Remain Temporary matches 1.. run function asset_manager:artifact/use/item/update
# 破壊処理
    execute if score $Remain Temporary matches ..0 run function asset_manager:artifact/use/item/break
# リセット
    scoreboard players reset $Remain Temporary
