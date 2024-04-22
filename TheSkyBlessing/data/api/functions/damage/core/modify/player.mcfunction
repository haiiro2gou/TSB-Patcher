#> api:damage/core/modify/player
#
# damageLibの中でも攻撃元に関係する処理部
#
# @within function api:damage/modifier*

# プレイヤー情報の記録
    scoreboard players operation $LatestModifiedUser UserID = @s UserID
# ダメージに補正値を掛ける
    execute if data storage api: Argument{BypassModifier:false} run function indexstorage:pull/
    execute if data storage api: Argument{BypassModifier:false} run data modify storage api: Modifiers set from storage indexstorage: _.Modifiers.Attack
    execute if data storage api: Argument{BypassModifier:false} run function api:damage/core/modify_damage
    execute if data storage api: Argument{BypassModifier:false} run data modify storage api: Argument.Damage set from storage api: ModifiedDamage
# リセット
    data remove storage api: ModifiedDamage
