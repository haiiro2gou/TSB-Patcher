#> asset_manager:teleporter/tick/player
#
#
#
# @within function core:tick/player

# 対象テレポーターの特定及びタグ付与
    tag @e[type=marker,tag=Teleporter,tag=TeleporterActivation,distance=..1,limit=1] add FromTeleporter

# テレポート前の処理
    execute if entity @s[tag=!Teleported,predicate=lib:is_sneaking] if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function asset_manager:teleporter/tick/active
# テレポート後のタグ解除処理
    execute if entity @s[tag=Teleported,predicate=!lib:is_sneaking] run tag @s remove Teleported
# キャンセル処理
    execute if entity @s[tag=TeleporterInit] run function asset_manager:teleporter/tick/cancel/check
    execute if entity @s[tag=TPCancel] run function asset_manager:teleporter/tick/cancel/

# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter