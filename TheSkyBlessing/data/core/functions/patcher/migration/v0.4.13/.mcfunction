#> core:patcher/migration/v0.4.13/
#
# v0.4.12 -> v0.4.13
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.13"

#> from: c9410f2786a1387d15aefbfa69ef915bb87a17fd
# @private
    scoreboard objectives add GU.Count dummy
    scoreboard objectives add GU.OwnerID dummy
