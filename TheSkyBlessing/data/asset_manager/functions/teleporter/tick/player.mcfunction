#> asset_manager:teleporter/tick/player
#
#
#
# @within function core:tick/player/

# 対象テレポーターの特定及びタグ付与
    tag @e[type=marker,tag=Teleporter,distance=..1,limit=1] add FromTeleporter

# EntityStorageを取得する
    execute as @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function indexstorage:pull/

# テレポートのメイン処理
    execute if entity @s[tag=!SuppressTeleport,predicate=lib:is_sneaking] if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] if data storage indexstorage: _.TeleporterData{ActivationState:"Activate"} run function asset_manager:teleporter/tick/active
# テレポート後のタグ解除処理
    execute if entity @s[tag=SuppressTeleport,predicate=!lib:is_sneaking] run tag @s remove SuppressTeleport
# キャンセル処理
    execute unless entity @s[tag=!TeleporterInitializing,tag=!TeleporterInitialized] run function asset_manager:teleporter/tick/cancel/check
    execute if entity @s[tag=TPCancel] run function asset_manager:teleporter/tick/cancel/

# テレポート失敗時ログのクールダウンを減らす
    scoreboard players remove @s[scores={TeleporterLogCD=0..}] TeleporterLogCD 1

# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter
