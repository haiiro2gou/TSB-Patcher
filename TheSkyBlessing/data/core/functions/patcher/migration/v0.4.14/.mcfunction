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

#> from: 0b1d140031172e249d98eb9946ae1e19b12009cd
    effect clear @e[type=!#lib:undead,type=!player] instant_health
    effect clear @e[type= #lib:undead,type=!player] instant_damage
