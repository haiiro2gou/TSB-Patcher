#> asset:effect/0016.knockback_resistance_buff/given/
#
#
#
# @within function asset:effect/0016.knockback_resistance_buff/_/given

# N*0.05のノックバック耐性上昇
    execute store result storage asset:context Temp double 0.05 run data get storage asset:context Stack 1
    function asset:effect/0016.knockback_resistance_buff/given/attribute