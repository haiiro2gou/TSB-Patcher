#> asset:effect/0016.knockback_resistance_buff/re-given/
#
#
#
# @within function asset:effect/0016.knockback_resistance_buff/_/re-given

# リセットする
    attribute @s generic.knockback_resistance modifier remove 00000001-0000-0003-0000-001000000000

# N*0.05のノックバック耐性上昇
    execute store result storage asset:context Temp double 0.05 run data get storage asset:context Stack 1
    function asset:effect/0016.knockback_resistance_buff/re-given/attribute