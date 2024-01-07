#> core:tick/
#
# 毎tick実行される処理
#
# @within tag/function minecraft:tick

# 現在時刻を取得する
    execute store result storage global Time int 1 run time query gametime
# プレイヤー数を取得する
    execute store result score #PlayerCount Global if entity @a

# 難易度指定する
    function world:difficulty/force

# エンティティ前処理
    execute as @a at @s run function entity:player/tick/pre
    execute as @e[tag=AssetMob] at @s run function entity:mob/tick/pre
