#> world_manager:gimmick/teleporter/cancelled
#
#
#
# @within function world_manager:gimmick/teleporter/

# リセット
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.41 ~ as @e[type=marker,tag=TPStar,distance=..1.8] if score @s TPStarFromUserID = @p[tag=this] UserID run kill @s
    tag @s remove TeleporterInit