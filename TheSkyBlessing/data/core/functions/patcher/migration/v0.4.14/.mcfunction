#> core:patcher/migration/v0.4.14/
#
# v0.4.13 -> v0.4.14
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.14"

#> from: 2cbeb9857b62ebfcc48b513b8a70d8f5fe94a5aa
    function #asset:artifact/load
    function #asset:mob/load
