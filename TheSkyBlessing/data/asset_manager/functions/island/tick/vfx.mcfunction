#> asset_manager:island/tick/vfx
#
#
#
# @within function asset_manager:island/tick/4_interval

function indexstorage:pull/

execute if data storage indexstorage: _.IslandData{DispelPhase:1b} run particle dust 0.5 0 0.5 0.5 ~ ~1.0 ~ 0.2 0.3 0.2 0 1 normal
execute if data storage indexstorage: _.IslandData{DispelPhase:2b} run particle dust 0.9 0.7 0.9 0.5 ~ ~1.0 ~ 0.2 0.3 0.2 0 1 normal
execute if data storage indexstorage: _.IslandData{DispelPhase:3b} run particle end_rod ~ ~1.0 ~ 4 5 4 0.03 2 normal
