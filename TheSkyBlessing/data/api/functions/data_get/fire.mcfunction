#> api:data_get/fire
#
# 対象のFireをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Fire
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: Fire
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Fire.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Fire.Data set from entity @s Fire
# outputのstorageに移す
    data modify storage api: Fire set from storage indexstorage: _.DataCache.Fire.Data
