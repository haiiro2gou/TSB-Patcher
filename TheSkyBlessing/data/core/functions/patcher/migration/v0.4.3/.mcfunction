#> core:patcher/migration/v0.4.3/
#
# v0.4.2 -> v0.4.3
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.3"

#> from: 863b8157354a11b6507760decfd55da307077b19
# @private
    scoreboard objectives add SP.AttackCount dummy
    scoreboard objectives add SP.Tick dummy
    scoreboard objectives add SP.WaitingTime dummy
    scoreboard objectives add SP.UserID dummy
    scoreboard objectives add SP.MaxHealth dummy

#> from: 508848e3bb368a0123cfdb625e7fa1627fe120ed
# @private
    scoreboard objectives add T3.BuffTick dummy
    