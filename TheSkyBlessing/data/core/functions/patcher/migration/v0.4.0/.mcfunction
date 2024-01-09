#> core:patcher/migration/v0.4.0/
#
# v0.3.1 -> v0.4.0
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.0"

#> from: b6f378b2a1cbf4c37dda26fc04fbde8695fc2589
    gamerule blockExplosionDropDecay true
    gamerule blockExplosionDropDecay true
    gamerule doVinesSpread true
    gamerule globalSoundEvents true
    gamerule lavaSourceConversion false
    gamerule maxCommandForkCount 2147483647
    gamerule mobExplosionDropDecay true
    gamerule playersNetherPortalCreativeDelay 1
    gamerule playersNetherPortalDefaultDelay 80
    gamerule playersSleepingPercentage 100
    gamerule projectilesCanBreakBlocks true
    gamerule snowAccumulationHeight 1
    gamerule tntExplosionDropDecay false
    gamerule waterSourceConversion true

#> from: c22fa96a8c7926684d8cd43ce92fc54fd02a9a51
    gamerule doWardenSpawning true
