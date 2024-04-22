#> api:data_get/previous_player_game_type
#
# 対象のpreviousPlayerGameTypeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: previousPlayerGameType
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: previousPlayerGameType
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.previousPlayerGameType.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.previousPlayerGameType.Data set from entity @s previousPlayerGameType
# outputのstorageに移す
    data modify storage api: previousPlayerGameType set from storage indexstorage: _.DataCache.previousPlayerGameType.Data
