#> asset:artifact/example/trigger/equip/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/example/trigger/equip/1.trigger

# 神器IDの設定
    data modify storage asset:artifact TargetID set value 65535
    data modify storage asset:artifact Index set value 1
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/example/trigger/equip/3.main