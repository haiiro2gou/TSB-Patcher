#> player_manager:fall_damage/deal_damage/get_vars
#
#
#
# @within function player_manager:fall_damage/deal_damage/

#> Val
# @private
    #declare score_holder $YVec

# 最大体力取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 100

# 1tick前のFallDistance取得
    execute store result score $FallDistance Temporary run scoreboard players get @s OldFallDistance
    function api:player_vector/get
    execute store result score $YVec Temporary run data get storage api: Return.PlayerVector[1] 10
    scoreboard players operation $FallDistance Temporary -= $YVec Temporary

# 落下ダメージ倍率の初期化
    scoreboard players set $DamageMultiplier Temporary 10

# ジャンプ力上昇のlvを取得する
# $JumpBoost(e1) = ($JumpBoost(e1) ?? -1(e1)) + 1(e1)
    function api:data_get/active_effects
    execute store result score $JumpBoost Temporary run data get storage api: active_effects[{id:"minecraft:jump_boost"}].amplifier 10
    execute unless data storage api: active_effects[{id:"minecraft:jump_boost"}] run scoreboard players set $JumpBoost Temporary -10
    scoreboard players add $JumpBoost Temporary 10

# 低速落下がついていたら問答無用で0にする
    execute if data storage api: active_effects[{id:"minecraft:slow_falling"}] run scoreboard players set $FallDistance Temporary 0

# リセット
    scoreboard players reset $YVec Temporary
