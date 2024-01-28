#> core:patcher/migration/v0.4.9/
#
# v0.4.8 -> v0.4.9
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.9"

#> from: 6ebbbf25c55c4386683226786ef55cd221953b30 (TSB-Asset)
    function #asset:mob/load
