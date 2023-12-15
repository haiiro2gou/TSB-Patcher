#> asset:artifact/0563.heartland/trigger/equip/check_condition
#
# 装備を装備した時のメイン処理
#
# @within function asset:artifact/0563.heartland/trigger/equip/

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact IgnoreCondition set value ["localcd"]
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックしてmain.mcfunctionを実行する
    execute as @s[tag=CanUsed] run function asset:artifact/0563.heartland/trigger/equip/main