#> api:entity/mob/effect/remove/from_level
#
# レベル指定での効果削除
#
# @input storage api:
#   Argument.Level : int
# @api

# validate
    execute unless data storage api: Argument.Level run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Level","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.Level if entity @s[tag=HasAssetEffect] run function api:entity/mob/effect/core/remove/from_level/
# リセット
    data remove storage api: Argument.Level