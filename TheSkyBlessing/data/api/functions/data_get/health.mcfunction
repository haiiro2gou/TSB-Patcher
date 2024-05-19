#> api:data_get/health
#
# 対象のHealthをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Health
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Health.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Health.Data set from entity @s Health
# outputのstorageに移す
    data modify storage api: Health set from storage indexstorage: _.DataCache.Health.Data
