#> core:patcher/migration/v0.0.1/
#
# v0.0.0 -> v0.0.1
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.0.1"

#> from: 87c80b859be2a372c0750a516d0f58513620bf90
# @private
    scoreboard objectives add PosPacketLossDetectAfterTick dummy

#> from: fae9d4f302b8cb5a3dc4dce0a7662549a8e5aa47
    summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,1],Marker:1b,Invisible:1b}