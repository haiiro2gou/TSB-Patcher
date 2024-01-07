#> entity:player/api/cache/silent
#
# 対象のSilentをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Silent
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Silent.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Silent.Data set from entity @s Silent
# outputのstorageに移す
    data modify storage api: Silent set from storage indexstorage: _.DataCache.Silent.Data
