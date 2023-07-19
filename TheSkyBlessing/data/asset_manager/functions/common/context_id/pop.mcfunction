#> asset_manager:common/context_id/pop
#
#
#
# @within function
#   api:artifact/*/from_id
#   api:entity/mob/effect/core/give
#   api:mob/core/summon
#   api:spawner/subtract_hp
#   asset:*/extends
#   asset:*/super.*
#   asset_manager:effect/events/*/call_super_method
#   asset_manager:mob/triggers/*/call_super_method

# idを掃除
    data remove storage asset:context id
# idを戻す
    data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
# スタックの要素を消す
    data remove storage asset:context IDStashStack[-1]