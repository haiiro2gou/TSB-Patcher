#> core:load/once
#
# 初回限定のロード処理
#
# @within function core:load/

#> バージョンを設定
    data modify storage global GameVersion set value "v0.1.6"

#> forceload chunksの設定
    # Origin
        execute in overworld run forceload add -1 -1 0 0
        execute in the_nether run forceload add -1 -1 0 0
        execute in the_end run forceload add -1 -1 0 0
    # ShulkerBox
        execute in overworld run forceload add 10000 10000
        execute in the_nether run forceload add 10000 10000
        execute in the_end run forceload add 10000 10000
    # Item Return Point
        execute in overworld run forceload add 2927 -1273
    # テレポート先
        # 神殿出口
            execute in overworld run forceload add 62 -12
        # 神殿入り口
            execute in overworld run forceload add 3040 -544 3103 -481
        # Item Return Point
            execute in overworld run forceload add 2922 -1333 2934 -1313
        # 神殿
            execute in overworld run forceload add 2976 -144 3007 -129
            execute in overworld run forceload add 3448 -472
            execute in overworld run forceload add 2915 -862
            execute in overworld run forceload add 3056 -896 3087 -881
            execute in overworld run forceload add 3411 -630

#> gameruleの設定
    function core:load/gamerule

#> エイリアスの登録とシャルカーボックスのsetblock
# @public
    #alias vector shulkerA 10000 0 10000
    #alias vector shulkerB 10000 1 10000
    #alias vector worldSpawn 23 3 24
    execute in overworld run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
    execute in overworld run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}
    execute in the_nether run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
    execute in the_nether run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}
    execute in the_end run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
    execute in the_end run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}

#> デバッグ用storageの設定
#
# Prefix.<DEBUG,SUCCESS,FAILED,ERROR,CRIT>
#
# @public
    #declare tag DevPrivilege
    #declare storage global
    data modify storage global Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage global Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage global Prefix.FAILED set value "§cFAILED >> §r"
    data modify storage global Prefix.ERROR set value "§cERROR >> §r"
    data modify storage global Prefix.CRIT set value "§4CRITICAL >> §r"

    data modify storage global GodIcon.Flora set value '{"text":"\\uE010","color":"white","font":"tsb"}'
    data modify storage global GodIcon.Urban set value '{"text":"\\uE011","color":"white","font":"tsb"}'
    data modify storage global GodIcon.Nyaptov set value '{"text":"\\uE012","color":"white","font":"tsb"}'
    data modify storage global GodIcon.Wi-ki set value '{"text":"\\uE013","color":"white","font":"tsb"}'
    data modify storage global GodIcon.Rumor set value '{"text":"\\uE014","color":"white","font":"tsb"}'

#> リセット必須オブジェクト等の削除
    scoreboard objectives remove Debug
    kill 0-0-0-0-0

#> ベクトル用等のシステム内汎用Entityのエイリアスの登録とsummon
# @within *
    #alias entity commonMarker 0-0-0-0-0
    #alias entity commonArmorStand 0-0-0-0-1
    summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}
    summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,1],Marker:1b,Invisible:1b}

#> 当たり判定を消す汎用Teamの作成
# @public
    team add NoCollision
    team modify NoCollision collisionRule never

#> スコアボード類

    #> 1tickで消す一時変数の保存用スコアボード
    # @public
        scoreboard objectives add Temporary dummy

    #> 常に値が設定される変数用スコアボード
    # @public
        scoreboard objectives add Global dummy
        #> 乱数値の設定
        # @private
            #declare tag Random
            summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
            execute store result score #Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
            execute store result score #Random.Carry Global run data get entity @e[tag=Random,limit=1] UUID[3]
            kill @e[tag=Random,limit=1]

    #> 定数類用スコアボード **変更厳禁**
    # @public
        scoreboard objectives add Const dummy
        function core:load/const

    #> UserID
    # @public
        scoreboard objectives add UserID dummy {"text":"汎用ユーザーID"}
        scoreboard objectives add MobUUID dummy {"text":"汎用MobID"}

    #> DEBUG用スコアボード
    # @within function core:load/once
        scoreboard objectives add Debug dummy {"text":"デバッグ"}

    #> Player - Motionチェック用スコア
    # @within
    #   function
    #       entity:player/pos_diff/*
    #       api:player_vector/get
        scoreboard objectives add PlayerStopTime dummy
        scoreboard objectives add PosPacketLossDetectAfterTick dummy

    #> WorldManager用スコアボード - ChunkLoadProtect
    # @within
    #   function
    #       entity:player/tick/pre
    #       world:chunk_io_protect/*
        scoreboard objectives add ChunkLoadWaitingTime dummy {"text":"プレイヤーの周囲のチャンクロードが終了するまでの待ち時間"}
