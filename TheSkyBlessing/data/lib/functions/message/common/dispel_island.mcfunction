#> lib:message/common/dispel_island
#
# 「島を浄化した！」
#
# @within function asset_manager:island/dispel/successful

title @a times 10 60 30
title @a title [{"text":"ISLAND PURIFIED","bold":true,"color":"light_purple"}]
title @a subtitle {"text":"","bold":true,"extra":[{"text":"PROGRESS ","color":"green"},{"score":{"name":"$Island","objective":"Global"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"$IslandTotal","objective":"Global"},"color":"white"}]}

tellraw @a [{"text":"[!] すべてのアイテムが神殿に返還された。","color":"yellow"}]
tellraw @a {"text":"","bold":true,"extra":[{"text":"解呪進行度 ","color":"green"},{"score":{"name":"$Island","objective":"Global"},"color":"white"},{"text":"/","color":"gray"},{"score":{"name":"$IslandTotal","objective":"Global"},"color":"white"}]}
