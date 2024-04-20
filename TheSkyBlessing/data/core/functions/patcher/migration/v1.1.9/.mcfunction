#> core:patcher/migration/v1.1.9/
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v1.1.9"

#> from: 983d6f0376a9288c16cad2bff5aafcd0dfad1a76 (TSB-Asset)
# @private
    scoreboard objectives add 74.TalkTime dummy
    scoreboard objectives add 74.Favorability dummy

#> from: 7494e1ffd83b51f1aa7d514d06633e5bb925d9cd (TSB-Asset)
# @private
    scoreboard objectives add GO.Time dummy

#> from: 55330608007226b778f770938aada8604a1fba6d (TSB-Asset)
# @private
    scoreboard objectives add 8E.UserID dummy
    scoreboard objectives add 8E.Tick dummy
    scoreboard objectives add 8E.LifeTime dummy

#> from: e460f2d56b30468e8ee38a79f78eec9ef8c19d5e (TSB-Asset)
# @private
    scoreboard objectives add SG.Combo dummy
    scoreboard objectives add SG.Wait dummy
    scoreboard objectives add SG.Burst dummy
