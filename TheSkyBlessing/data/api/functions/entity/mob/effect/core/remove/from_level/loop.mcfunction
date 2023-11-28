#> api:entity/mob/effect/core/remove/from_level/loop
#
#
#
# @within function
#   api:entity/mob/effect/core/remove/from_level/
#   api:entity/mob/effect/core/remove/from_level/loop

#> private
# @private
    #declare score_holder $Success

# 先頭を取り出す
    data modify storage asset:effect ID set from storage asset:effect IDList[0]
    function asset_manager:effect/common/try_pop_effect_data
# 存在する場合
    execute store result storage asset:effect Succeeded int 1 unless data storage asset:effect {TargetEffectData: {IsBadEffect: false}, Type: "bad"} unless data storage asset:effect {TargetEffectData: {IsBadEffect: true}, Type: "good"} run function api:entity/mob/effect/core/remove/from_level/modify
# 残っていたら再帰
    data remove storage asset:effect IDList[0]
    execute unless data storage asset:effect {Succeeded: 1, IsSingle: true} if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/from_level/loop
