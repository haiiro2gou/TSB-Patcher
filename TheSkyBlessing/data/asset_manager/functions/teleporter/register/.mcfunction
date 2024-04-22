#> asset_manager:teleporter/register/
#
#
#
# @within function asset:teleporter/common/register

# ベースエンティティを設定する
    summon marker ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"]}
# データ取得
    execute as @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] run function indexstorage:pull/
# 直接入れるやつ
    data modify storage indexstorage: _.TeleporterData.ID set from storage asset:teleporter ID
    data modify storage indexstorage: _.TeleporterData.GroupID set from storage asset:teleporter GroupID
    data modify storage indexstorage: _.TeleporterData.ActivationState set from storage asset:teleporter ActivationState
# グループ側に入れるやつ
    data modify storage asset:teleporter Teleporters append value {}
    data modify storage asset:teleporter Teleporters[-1].ID set from storage asset:teleporter ID
    data modify storage asset:teleporter Teleporters[-1].GroupID set from storage asset:teleporter GroupID
    data modify storage asset:teleporter Teleporters[-1].Data.ActivationState set from storage asset:teleporter ActivationState
    data modify storage asset:teleporter Teleporters[-1].Data.Color set from storage asset:teleporter Color
    data modify storage asset:teleporter Teleporters[-1].Pos set from entity @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] Pos
# 参照情報を保存する
    data modify storage asset:teleporter TeleporterISMap append value {}
    data modify storage asset:teleporter TeleporterISMap[-1].TeleporterID set from storage asset:teleporter ID
    execute store result storage asset:teleporter TeleporterISMap[-1].IndexStorageID int 1 run scoreboard players get @e[type=marker,tag=Teleporter,distance=..0.01,limit=1] IndexStorageID
