#> api:entity/mob/effect/core/remove/from_id
#
#
#
# @within function api:entity/mob/effect/remove/from_id

#> private
# @private
    #declare score_holder $ClearLv
    #declare score_holder $RequiredLv

# 該当IDのデータを引っこ抜く
    data modify storage asset:effect ID set from storage api: Argument.ID
    function asset_manager:effect/common/try_pop_effect_data
# 存在する場合
    # レベルを抽出
        execute if data storage asset:effect TargetEffectData store result score $ClearLv Temporary run data get storage api: Argument.Level
        execute if data storage asset:effect TargetEffectData store result score $RequiredLv Temporary run data get storage asset:effect TargetEffectData.RequireClearLevelWithApi 1
    # 削除レベルの方が大きいならば残り時間を-1にする
        execute if data storage asset:effect TargetEffectData if score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage asset:effect TargetEffectData.Duration set value -1
        execute if data storage asset:effect TargetEffectData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect TargetEffectData
# リセット
    scoreboard players reset $ClearLv Temporary
    scoreboard players reset $RequiredLv Temporary