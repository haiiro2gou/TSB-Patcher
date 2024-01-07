#> entity:player/api/cache/recipe_book
#
# 対象のrecipeBookをstorageに軽量に取得します。
#
# @input as player
# @output storage api: recipeBook
# @public

#>Temp
# @private
    #declare score_holder #NotLatestData

# IndexStorage呼び出し
    function indexstorage:pull/
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score #NotLatestData Temporary run data modify storage indexstorage: _.DataCache.recipeBook.Time set from storage global Time
    execute if score #NotLatestData Temporary matches 1 run data modify storage indexstorage: _.DataCache.recipeBook.Data set from entity @s recipeBook
# outputのstorageに移す
    data modify storage api: recipeBook set from storage indexstorage: _.DataCache.recipeBook.Data
