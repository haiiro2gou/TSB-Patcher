#> asset_manager:island/dispel/successful
#
#
#
# @within function asset_manager:island/dispel/

# 邪魔なスコアをリセットする
    scoreboard players reset @s DispelTime
# 解呪数を1増やす
    scoreboard players add $PurifiedIslands Global 1
# VFX
    function asset_manager:island/dispel/vfx/dispel
# メッセージ
    function lib:message/common/dispel_island
# 祝福を与える
    data modify storage api: Argument.ID set value 2
    execute as @p[predicate=lib:is_sneaking,distance=..2] at @s run function api:artifact/give/from_id
# アイテム返す
    function player_manager:lost_item/give_all/
# データ取得
    function indexstorage:pull/
# 二度と祈れないようにする
    tag @s add DispelledCursedArtifact
# テレポーターを起動する
    data modify storage api: Argument.ID set from storage indexstorage: _.IslandData.ID
    data modify storage api: Argument.ActivationState set value "Activate"
    function api:teleporter/set_activation_state/from_id
# DispelPhaseを進める
    function indexstorage:pull/
    data modify storage indexstorage: _.IslandData.DispelPhase set value 3b
# Dispelledトリガーを発火する
    data modify storage asset:context id set from storage indexstorage: _.IslandData.ID
    function #asset:island/dispelled
