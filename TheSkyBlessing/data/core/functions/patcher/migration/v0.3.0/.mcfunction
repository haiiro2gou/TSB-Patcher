#> core:patcher/migration/v0.0.4/
#
# v0.0.3 -> v0.0.4
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.0.4"

#> from: bc6a18457222230934880b7f07a651dba6d6b10f
# @private
    scoreboard objectives add TeleporterLogCD dummy {"text":"他のテレポーターが発見できなかった際のログのクールダウン"}

#> from: 316f418543c107e8e7b1a65f341f7db32f7430be
# @private
    #declare objective AttackEvent
    scoreboard objectives remove AttackEvent
    scoreboard objectives add AttackEvent custom:damage_dealt {"text":"イベント: 攻撃"}

#> from: 91aa22acb07db387bf725dfe7f15bcd5c79172e9
# @private
    scoreboard objectives add MobHealth dummy {"text":"Mobの体力"}