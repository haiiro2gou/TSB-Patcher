#> asset:spawner/263/register
#
# スポナーの定義データ
#
# @within function asset:spawner/263/


# 重複防止レジストリへの登録
    data modify storage asset:spawner DPR append value {D:overworld,X:338,Y:173,Z:-76}

# ID (int)
    data modify storage asset:spawner ID set value 263
# 体力 (int) このスポナーから召喚されたMobがN体殺されると破壊されるか
    data modify storage asset:spawner HP set value 4
# SpawnPotentials(int | int[] | ({ Weight: int, Id: int })[]) MobAssetのIDを指定する
    data modify storage asset:spawner SpawnPotentials set value [7]
# 一度に召喚する数 (int)
    data modify storage asset:spawner SpawnCount set value 2
# 動作範囲 (int) この範囲にプレイヤーが存在するとき、Mobの召喚を開始する
    data modify storage asset:spawner SpawnRange set value 4
# 初回召喚時間 (int)
    data modify storage asset:spawner Delay set value 20
# 最低召喚間隔 (int)
    data modify storage asset:spawner MinSpawnDelay set value 100
# 最大召喚間隔 (int)
    data modify storage asset:spawner MaxSpawnDelay set value 400
# 近くのエンティティの最大数 (int)
    data modify storage asset:spawner MaxNearbyEntities set value 6
# この範囲にプレイヤーが存在するとき、Mobの召喚を開始する // distance <= 100
    data modify storage asset:spawner RequiredPlayerRange set value 16

function asset:spawner/common/register