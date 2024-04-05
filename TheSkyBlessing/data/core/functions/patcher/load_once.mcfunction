#> core:patcher/load_once
#
# #load時に一回のみ実行される前処理群
#
# @within function core:patcher/load

#> バージョン情報の設定
    data modify storage global Patcher.Version set value "v1.1.0"
    tellraw @a [{"text":"================================","color":"gold"}]
    tellraw @a [{"text":"TSB-Patcher ","color":"green"},{"nbt":"Patcher.Version","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @a [{"text":""}]
    tellraw @a [{"text":"Thanks for installation!"}]
    tellraw @a [{"text":"================================","color":"gold"}]

#> gameruleの設定
    function core:define_gamerule

#> リセット必須オブジェクト等の削除
# @private
    #declare objective AttackEvent
    #declare storage asset:trader
    #declare tag Trader
    scoreboard objectives remove AttackEvent
    data remove storage asset:trader DPR
    kill @e[type=villager,tag=Trader]

#> ベクトル用等のシステム内汎用Entityのエイリアスの登録とsummon
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}
    summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,1],Marker:1b,Invisible:1b}

#> スコアボード類
    #> 常に値が設定される変数用スコアボード
        difficulty normal

    #> AssetManager: Mob -Public
    # @public
        scoreboard objectives add MobHealth dummy {"text":"Mobの体力"}

    #> AssetManager: Island -Public
    # @public
        #declare score_holder $Island
        #declare score_holder $IslandTotal
        scoreboard players set $Island Global 0
        scoreboard players set $IslandTotal Global 50

    #> AssetManager: Teleporter
    # @within function
    #   asset_manager:teleporter/**
        scoreboard objectives add TeleporterLogCD dummy {"text":"他のテレポーターが発見できなかった際のログのクールダウン"}

    #> AssetManager: Effect
    # @within function
    #   asset_manager:effect/**
        scoreboard objectives add UsedMilk used:milk_bucket {"text":"牛乳使用チェック"}
        scoreboard objectives add UsedTotem used:totem_of_undying {"text":"トーテム使用チェック"}

    #> PlayerManager - Motionチェック用スコアボード
    # @within
    #   function
    #       player_manager:pos_fix_and_calc_diff
    #       api:player_vector/get
    #   predicate lib:is_player_moving
        scoreboard objectives add PosPacketLossDetectAfterTick dummy

    #> PlayerManager - 信仰
    # @within function player_manager:god/**
        scoreboard objectives add Believe4 trigger {"text":"信仰のユーザー入力"}
        scoreboard objectives add Believe5 trigger {"text":"信仰のユーザー入力"}

    #> PlayerManager - 戦闘判定用スコアボード
    # @within
    #   function
    #       player_manager:in_battle_tick_score
    #       mob_manager:entity_finder/attacked_entity/on_attack
    #       mob_manager:entity_finder/attacking_entity/on_hurt
    #   predicate lib:in_battle
        scoreboard objectives add InBattleTick dummy

    #> PlayerManager用スコアボード
    # @within
    #   function core:handler/first_join
    #   * api:**
    #   * player_manager:**
        scoreboard objectives add OldFallDistance dummy {"text":"1tick前の落下距離 (e1)"}

    #> 最大値用スコアホルダー
    # @within function
    #   core:patcher/load_once
    #   core:handler/first_join
    #   asset:artifact/0002.blessing/trigger/**
        #declare score_holder $BonusHealth
        #declare score_holder $BonusMP
        #declare score_holder $AttackBonus
        #declare score_holder $DefenseBonus
        scoreboard players operation $BonusHealth Global = $MaxHealth Global
        scoreboard players operation $BonusHealth Global /= $10000 Const
        scoreboard players remove $BonusHealth Global 20
        scoreboard players operation $BonusMP Global = $MaxMP Global
        scoreboard players remove $BonusMP Global 100
        scoreboard players set $AttackBonus Global 0
        scoreboard players set $DefenseBonus Global 0
        scoreboard players reset $MaxHealth Global
        scoreboard players reset $MaxMP Global

#> 各Asset側のロード処理
    function #asset:artifact/load
    function #asset:effect/load
    function #asset:mob/load

#> ROMを初期化する
# @private
    #declare function rom:init
    function rom:init
