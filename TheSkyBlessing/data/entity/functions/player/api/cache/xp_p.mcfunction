#> entity:player/api/cache/xp_p
#
# 対象のXpPをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpP
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.XpP.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.XpP.Data set from entity @s XpP
# outputのstorageに移す
    data modify storage api: XpP set from storage indexstorage: _.DataCache.XpP.Data