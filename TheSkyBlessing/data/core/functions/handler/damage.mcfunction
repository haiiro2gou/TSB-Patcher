#> core:handler/damage
#
# ダメージを受けた際に実行される
#
# @within function core:tick/player/

# asset_managerへの引継ぎ
    tag @s add TriggerFlag.Damage
# スペランカーなら即死
    execute if score $Difficulty Global matches 9 run tag @s add Death
# Reset
    advancement revoke @s only core:handler/damage
