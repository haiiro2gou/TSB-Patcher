#> entity:player/pos_diff/calc
#
#
#
# @within function entity:player/tick/pre

# 現tickの座標を取得する (PlayerStorage呼び出しも含む)
    function entity:player/api/cache/pos
    # function indexstorage:pull/
# 1tick前のベクトルの大きさの二乗を取得する
    execute store result score #Prv.SquaredMagnitude Temporary run data get storage indexstorage: _.PosDiffSquaredMagnitude

# セッションを開く
    function common:lib/array/session/open
# 現tickの差分を計算する
    data modify storage lib: ArrayA set from storage api: Pos
    data modify storage lib: ArrayB set from storage indexstorage: _.PlayerPos
    function common:lib/array/math/sub

    data modify storage entity:player PosDiff set from storage lib: SubResult
# 現tickのベクトルの大きさの二乗を計算する
    data modify storage lib: Array set from storage lib: SubResult
    function common:lib/array/math/sqr

    data modify storage lib: Array set from storage lib: SqrResult
    function common:lib/array/math/sum

    execute store result score #Cur.SquaredMagnitude Temporary run data get storage lib: SumResult 100
# スコア推移
    scoreboard players reset @s[scores={PosPacketLossDetectAfterTick=2}] PosPacketLossDetectAfterTick
    scoreboard players add @s[scores={PosPacketLossDetectAfterTick=0..}] PosPacketLossDetectAfterTick 1

# 前tickの差分が十分な状態(0.05m/tick,1m/sec)でDiffが急に0になったらおそらくPosのパケロスが発生してる
# パケロス発生時は、前tickの情報を元にデータを生成する
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players set @s PosPacketLossDetectAfterTick 0
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayA set from storage api: Pos
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayB set from storage indexstorage: _.PosDiff
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run function common:lib/array/math/add
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage indexstorage: _.DataCache.Pos.Data set from storage lib: AddResult
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage api: Pos set from storage lib: AddResult
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage entity:player PosDiff set from storage indexstorage: _.PosDiff
    execute if score #Prv.SquaredMagnitude Temporary matches 50.. if score #Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation #Cur.SquaredMagnitude Temporary = #Prv.SquaredMagnitude Temporary

# 止まってから20tick目に座標の補正がかかるのでそのtickに限っては無視する
    execute if score @s PlayerStopTime matches 19 run data modify storage entity:player PosDiff set value [0d,0d,0d]

# 止まってからの時間の管理
    scoreboard players add @s PlayerStopTime 1

    data modify storage lib: Array set from storage entity:player PosDiff
    data modify storage lib: CompareTarget set value 0d
    function common:lib/array/compare_single
    execute if data storage lib: CompareResult[{_:{_:false}}] run scoreboard players set @s PlayerStopTime 0

# 次tickにデータ渡す
    data modify storage indexstorage: _.PlayerPos set from storage api: Pos
    data modify storage indexstorage: _.PosDiff set from storage entity:player PosDiff
    execute store result storage indexstorage: _.PosDiffSquaredMagnitude int 1 run scoreboard players get #Cur.SquaredMagnitude Temporary
# リセット
    function common:lib/array/session/close
    data remove storage entity:player PosDiff
    scoreboard players reset #Prv.SquaredMagnitude Temporary
    scoreboard players reset #Cur.SquaredMagnitude Temporary
    scoreboard players reset #Temp Temporary