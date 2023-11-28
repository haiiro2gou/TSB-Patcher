#> api:entity/mob/effect/core/remove/multiple/loop
#
#
#
# @within function
#   api:entity/mob/effect/core/remove/multiple/
#   api:entity/mob/effect/core/remove/multiple/loop

#> private
# @private
    #declare score_holder $ClearLv
    #declare score_holder $RequiredLv

# 先頭を取り出す
    data modify storage asset:effect ID set from storage asset:effect IDList[0]
    function asset_manager:effect/common/try_pop_effect_data
# 存在する場合
    # レベルを抽出
        execute if data storage asset:effect TargetEffectData store result score $ClearLv Temporary run data get storage api: Argument.ClearLv 1
        execute if data storage asset:effect TargetEffectData store result score $RequiredLv Temporary run data get storage asset:effect TargetEffectData.RequireClearLv 1
    # 要求レベルを満たしていれば残り時間に-1を代入して戻す
        execute if score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage asset:effect TargetEffectData.Duration set value -1
        execute if score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect TargetEffectData
# リセット
    scoreboard players reset $ClearLv Temporary
    scoreboard players reset $RequiredLv Temporary

# 残っていたら再帰
    data remove storage asset:effect IDList[0]
    execute if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/multiple/loop
