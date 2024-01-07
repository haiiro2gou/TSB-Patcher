#> entity:player/api/cache/brain
#
# 対象のBrainをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Brain
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Brain.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Brain.Data set from entity @s Brain
# outputのstorageに移す
    data modify storage api: Brain set from storage indexstorage: _.DataCache.Brain.Data
