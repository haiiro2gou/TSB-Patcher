#> asset:artifact/example/trigger/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/example/trigger/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact Index set value 1
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# VFX
    playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 0.5 1.6
    playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.5 1
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 2
    particle dust 0.278 0.733 1 1 ~ ~1 ~ 0.2 0.2 0.2 0 20
    particle crit ~ ~1 ~ 0 0 0 0.5 10
    particle dust 100000000 1 1 1 ~ ~1.5 ~ 0.5 1 0.5 0 150
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2
