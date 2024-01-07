#> entity:player/pos_diff/fix
#
# パケットの損失を確認した際に前tickのデータから復元を行う処理
#
# @within function entity:player/pos_diff/calc

# Posを前tickのPosとDiffから推測する
    scoreboard players set @s PosPacketLossDetectAfterTick 0
    data modify storage lib: ArrayA set from storage api: Pos
    data modify storage lib: ArrayB set from storage indexstorage: _.PosDiff
    function common:lib/array/math/add
    data modify storage indexstorage: _.DataCache.Pos.Data set from storage lib: AddResult
    data modify storage api: Pos set from storage lib: AddResult
# 前tickのデータで上書きする (つまり更新が発生しない)
    data modify storage entity:player PosDiff set from storage indexstorage: _.PosDiff
    scoreboard players operation #Cur.SquaredMagnitude Temporary = #Prv.SquaredMagnitude Temporary
