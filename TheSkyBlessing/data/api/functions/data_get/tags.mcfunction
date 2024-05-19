#> api:data_get/tags
#
# 対象のTagsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Tags
# @public

#> Temp
# @private
    #declare score_holder $NotLatestData

# EntityStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Temporary run data modify storage indexstorage: _.DataCache.Tags.Time set from storage global Time
    execute if score $NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.Tags.Data set from entity @s Tags
# outputのstorageに移す
    data modify storage api: Tags set from storage indexstorage: _.DataCache.Tags.Data
