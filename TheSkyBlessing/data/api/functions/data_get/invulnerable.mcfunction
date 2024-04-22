#> api:data_get/invulnerable
#
# 対象のInvulnerableをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Invulnerable
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# outputをきれいにする
    data remove storage api: Invulnerable
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Invulnerable.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Invulnerable.Data set from entity @s Invulnerable
# outputのstorageに移す
    data modify storage api: Invulnerable set from storage indexstorage: _.DataCache.Invulnerable.Data
