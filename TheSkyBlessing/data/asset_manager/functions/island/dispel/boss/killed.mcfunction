#> asset_manager:island/dispel/boss/killed
#
#
#
# @within function asset_manager:island/dispel/boss/watcher

# タグ外す
    tag @s remove CantDispel
    scoreboard players reset @s TargetBossID
# DispelPhaseを進める
    function indexstorage:pull/
    data modify storage indexstorage: _.IslandData.DispelPhase set value 2b
