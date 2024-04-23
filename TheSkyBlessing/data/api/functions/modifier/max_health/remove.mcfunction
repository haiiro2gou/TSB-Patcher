#> api:modifier/max_health/remove
#
#
#
# @input
#   as player
#   storage api:
#       Argument.UUID : [int] @ 4
# @api

# データ検証
    execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
# データが正しいなら消す
    execute if data storage api: Argument.UUID run function api:modifier/core/max_health/remove
# データ代入
    execute store result score @s ScoreToMaxHealth run data get storage indexstorage: _.Modifiers.MaxHealth 10000
# リセット
    data remove storage api: Argument.UUID
