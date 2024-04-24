#> core:patcher/migration/v1.2.0/entity
# @within function core:tick/

# OhMyDatIDからストレージを取得
    function oh_my_dat:please
# IndexStorageに移管
    function indexstorage:pull/
    data modify storage indexstorage: _ merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
# リセット
    function oh_my_dat:release
