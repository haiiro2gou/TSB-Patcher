#> asset_manager:teleporter/tick/cancel/
#
#
#
# @within function asset_manager:teleporter/tick/player

# storage呼び出し
    function indexstorage:pull/
# リセット
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.41 ~ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    data remove storage indexstorage: _.Temp.Teleporters
    tag @s remove TeleporterInitializing
    tag @s remove TeleporterInitialized
    tag @s remove TPCancel
