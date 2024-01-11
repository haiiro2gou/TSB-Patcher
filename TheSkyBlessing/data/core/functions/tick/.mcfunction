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

# エンティティ初期化
    execute as @e[type=#entity:mob/living,type=!player,tag=!AlreadyInitMob] run function entity:mob/init/

# エンティティ前処理
    execute as @a at @s run function entity:player/tick/pre
    execute as @e[type=#entity:mob/living,type=!player,tag=AlreadyInitMob] at @s run function entity:mob/tick/pre
# エンティティ本処理
    execute as @a at @s run function entity:player/tick/
    execute as @e[type=#entity:mob/living,type=!player,tag=AlreadyInitMob] at @s run function entity:mob/tick/
# エンティティ後処理
    execute as @a at @s run function entity:player/tick/post
    execute as @e[type=#entity:mob/living,type=!player,tag=AlreadyInitMob] at @s run function entity:mob/tick/post

# 0-0-0-0-0消失警告
    execute if entity @p[distance=..80] unless entity 0-0-0-0-0 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"0-0-0-0-0が参照できません。システム内で重大な問題が発生する可能性があります。"}]
