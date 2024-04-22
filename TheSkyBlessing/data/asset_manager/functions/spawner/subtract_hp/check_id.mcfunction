#> asset_manager:spawner/subtract_hp/check_id
#
# 対象スポナーの召喚するMobのIDをリストを取得して再帰処理に渡す
#
# @within function asset_manager:spawner/subtract_hp/check_already_find

# EntityStorage呼び出し
    function indexstorage:pull/
# MobIDを移す
    data modify storage asset:spawner SpawnPotentials set from storage indexstorage: _.SpawnerData.SpawnPotentials
# すべてのIDについてチェックする
    function asset_manager:spawner/subtract_hp/check_id_foreach
# リセット
    data remove storage asset:spawner MobID
