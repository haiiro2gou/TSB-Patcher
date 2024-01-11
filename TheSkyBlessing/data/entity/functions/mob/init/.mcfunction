#> entity:mob/init/
#
# Mobのデータを初期化します
#
# @within function
#   core:tick/
#   asset_manager:mob/summon/set_data

# AssetMobで無い時、タグを付与しEnemyをチームに入れる
    execute if entity @s[tag=!AssetMob] run function entity:mob/init/set_tag_and_team
# 体力を緩衝体力に移す処理
    execute if entity @s[tag=!AssetMob] run function entity:mob/init/modify_health
# 初期化フラグ追加
    tag @s add AlreadyInitMob
