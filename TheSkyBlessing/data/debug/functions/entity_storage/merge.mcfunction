#> debug:entity_storage/merge
# @user
# @private

# EntityStorage取得
    function indexstorage:pull/
# merge
    data modify storage indexstorage: _ merge from storage lib: Argument.Data
# リセット
    data remove storage lib: Argument.Data
