#> asset_manager:spawner/register/set_data
#
# スポナーにデータを埋め込む
#
# @within function asset_manager:spawner/register/

# EntityStorage呼び出し
    function indexstorage:pull/
# スコアボードに入れるもの
    execute store result score @s SpawnerHP run data get storage asset:spawner HP
    execute store result score @s SpawnerCooldown run data get storage asset:spawner Delay
# SpawnPotentialsを正規化しWeightのSumを計算する
    function asset_manager:spawner/register/process_spawn_potentials/
# EntityStorageに保存するもの
    data modify storage indexstorage: _.SpawnerData.ID set from storage asset:spawner ID
    data modify storage indexstorage: _.SpawnerData.Pos set from entity @s Pos
    data modify storage indexstorage: _.SpawnerData.SpawnPotentials set from storage asset:spawner NormalizedSpawnPotentials
    data modify storage indexstorage: _.SpawnerData.SpawnCount set from storage asset:spawner SpawnCount
    data modify storage indexstorage: _.SpawnerData.SpawnRange set from storage asset:spawner SpawnRange
    data modify storage indexstorage: _.SpawnerData.MinSpawnDelay set from storage asset:spawner MinSpawnDelay
    data modify storage indexstorage: _.SpawnerData.MaxSpawnDelay set from storage asset:spawner MaxSpawnDelay
    data modify storage indexstorage: _.SpawnerData.MaxNearbyEntities set from storage asset:spawner MaxNearbyEntities
    data modify storage indexstorage: _.SpawnerData.RequiredPlayerRange set from storage asset:spawner RequiredPlayerRange
    execute store result storage indexstorage: _.SpawnerData.SpawnPotentialsWeightSum int 1 run scoreboard players get $SpawnPotentialsWeightSum Temporary
# リセット
    data remove storage asset:spawner NormalizedSpawnPotentials
    tag @s remove SpawnerInit
