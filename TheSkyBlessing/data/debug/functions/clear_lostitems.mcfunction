#> debug:clear_lostitems
#
# 失ったアイテムを削除します
#
# @private
# @user

function indexstorage:pull/
data remove storage indexstorage: _.LostItems
