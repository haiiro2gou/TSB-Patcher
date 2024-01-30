#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# バージョンチェック
    function player_manager:version_check
#> v0.4.10+ modifier base
    function oh_my_dat:please
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Base run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Base set value {Heal:1d,ReceiveHeal:1d,Attack:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d},Defense:{Base:1d,Physical:1d,Magic:1d,None:1d,Fire:1d,Water:1d,Thunder:1d},MaxMP:100d,MPRegen:1d,MaxHealth:20d}
# ボーナスの更新
    function asset:artifact/0002.blessing/trigger/update/attack_bonus
    function asset:artifact/0002.blessing/trigger/update/defense_bonus
    function asset:artifact/0002.blessing/trigger/update/health_bonus
    function asset:artifact/0002.blessing/trigger/update/mp_bonus
# ロード待ち時間を更新する
    function world_manager:chunk_io_protect/update_load_waiting_time