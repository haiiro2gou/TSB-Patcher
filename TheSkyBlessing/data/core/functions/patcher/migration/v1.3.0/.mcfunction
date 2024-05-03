#> core:patcher/migration/v1.3.0/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.3.0"

#> from: 7e5497f24dd65098ead22b4b350ac1973433eafc
# @private
    scoreboard objectives add RF.UserID dummy

#> from: 57c0abf8c613c2ad1f6eb566df37251304227daf
# @private
    scoreboard objectives add TP.UseCount dummy
