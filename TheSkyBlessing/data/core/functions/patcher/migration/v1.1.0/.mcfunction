#> core:patcher/migration/v1.1.0/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.1.0"

#> from: 036e6046c2ea3b84facb24df4cf9e787f1333c10
# @private
    #declare score_holder $Island
    #declare score_holder $IslandTotal
    scoreboard players set $Island Global 0
    scoreboard players set $IslandTotal Global 50
