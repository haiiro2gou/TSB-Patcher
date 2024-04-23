#> core:patcher/migration/v1.2.0/entity
# @within function core:tick/

# OhMyDatIDからストレージを取得
    function oh_my_dat:please
# テレポーターはキーの違いを差し替える
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterISMap set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterOMDMap
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterOMDMap
# IndexStorageに移管
    function indexstorage:pull/
    data modify storage indexstorage: _ merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
# リセット
    function oh_my_dat:release
