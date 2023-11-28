#> api:entity/mob/effect/remove/multiple
#
# entityに付与されている全てのエフェクトのうち、ClearLv を満たすものを全て削除します
#
# @input storage api:
#   Argument.ClearLv : int
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.ClearLv if entity @s[tag=HasAssetEffect] run function api:entity/mob/effect/core/remove/multiple/
# リセット
    data remove storage api: Argument.ClearLv
