#> asset_manager:artifact/create/set_trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:artifact/create/trigger_loop

# スロット
    execute if data storage asset:temp Trigger{Slot:"auto"} run data modify storage asset:temp Temp.Trigger.A set value "どちらかの手に所持"
    execute if data storage asset:temp Trigger{Slot:"mainhand"} run data modify storage asset:temp Temp.Trigger.A set value "メインハンドに所持"
    execute if data storage asset:temp Trigger{Slot:"offhand"} run data modify storage asset:temp Temp.Trigger.A set value "オフハンドに所持"
    execute if data storage asset:temp Trigger{Slot:"head"} run data modify storage asset:temp Temp.Trigger.A set value "装備"
    execute if data storage asset:temp Trigger{Slot:"chest"} run data modify storage asset:temp Temp.Trigger.A set value "装備"
    execute if data storage asset:temp Trigger{Slot:"legs"} run data modify storage asset:temp Temp.Trigger.A set value "装備"
    execute if data storage asset:temp Trigger{Slot:"feet"} run data modify storage asset:temp Temp.Trigger.A set value "装備"
    execute if data storage asset:temp Trigger{Slot:"inventory"} run data modify storage asset:temp Temp.Trigger.A set value "インベントリ内に保持"
    execute if data storage asset:temp Trigger{Slot:"hotbar"} run data modify storage asset:temp Temp.Trigger.A set value "ホットバーに保持"
# 接続詞
    data modify storage asset:temp Temp.Trigger.AB set value "し"
# トリガー
    execute if data storage asset:temp Trigger{Trigger:"onClick"} run data modify storage asset:temp Temp.Trigger.B set value "右クリック"
    execute if data storage asset:temp Trigger{Trigger:"shot"} run data modify storage asset:temp Temp.Trigger.B set value "発射"
    execute if data storage asset:temp Trigger{Trigger:"itemUse"} run data modify storage asset:temp Temp.Trigger.B set value "使用"
    execute if data storage asset:temp Trigger{Trigger:"passive"} run data modify storage asset:temp Temp.Trigger.B set value "ている限り"
    execute if data storage asset:temp Trigger{Trigger:"onAttack"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを攻撃"
    execute if data storage asset:temp Trigger{Trigger:"onAttackByMelee"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを近接攻撃"
    execute if data storage asset:temp Trigger{Trigger:"onAttackByProjectile"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを遠距離攻撃"
    execute if data storage asset:temp Trigger{Trigger:"onDamage"} run data modify storage asset:temp Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onDamageFromExplode"} run data modify storage asset:temp Temp.Trigger.B set value "被爆発ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onDamageFromBurn"} run data modify storage asset:temp Temp.Trigger.B set value "被延焼ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onDamageFromEntity"} run data modify storage asset:temp Temp.Trigger.B set value "被攻撃ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onDamageFromMelee"} run data modify storage asset:temp Temp.Trigger.B set value "被近接ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onDamageFromProjectile"} run data modify storage asset:temp Temp.Trigger.B set value "被遠距離ダメージ"
    execute if data storage asset:temp Trigger{Trigger:"onKilled"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを殺害"
    execute if data storage asset:temp Trigger{Trigger:"onKilledByMelee"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを近接攻撃で殺害"
    execute if data storage asset:temp Trigger{Trigger:"onKilledByProjectile"} run data modify storage asset:temp Temp.Trigger.B set value "Entityを遠距離攻撃で殺害"
    execute if data storage asset:temp Trigger{Trigger:"sneak"} run data modify storage asset:temp Temp.Trigger.B set value "スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak1s"} run data modify storage asset:temp Temp.Trigger.B set value "1秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak2s"} run data modify storage asset:temp Temp.Trigger.B set value "2秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak3s"} run data modify storage asset:temp Temp.Trigger.B set value "3秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak4s"} run data modify storage asset:temp Temp.Trigger.B set value "4秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak5s"} run data modify storage asset:temp Temp.Trigger.B set value "5秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"sneak10s"} run data modify storage asset:temp Temp.Trigger.B set value "10秒間スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak"} run data modify storage asset:temp Temp.Trigger.B set value "0秒以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak1s"} run data modify storage asset:temp Temp.Trigger.B set value "1秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak2s"} run data modify storage asset:temp Temp.Trigger.B set value "2秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak3s"} run data modify storage asset:temp Temp.Trigger.B set value "3秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak4s"} run data modify storage asset:temp Temp.Trigger.B set value "4秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak5s"} run data modify storage asset:temp Temp.Trigger.B set value "5秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"keepSneak10s"} run data modify storage asset:temp Temp.Trigger.B set value "10秒間以上スニーク"
    execute if data storage asset:temp Trigger{Trigger:"equipping"} run data modify storage asset:temp Temp.Trigger.AB set value ""
    execute if data storage asset:temp Trigger{Trigger:"equipping"} run data modify storage asset:temp Temp.Trigger.B set value ""
    execute if data storage asset:temp Trigger{Trigger:"onHeal"} run data modify storage asset:temp Temp.Trigger.B set value "回復"
# 設定されてなかったらエラーメッセージ
    execute unless data storage asset:temp Temp.Trigger.A run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないSlotが指定されています","color":"white"}]
    execute unless data storage asset:temp Temp.Trigger.B run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"登録されていないTriggerが指定されています","color":"white"}]
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/trigger
# リセット
    data remove storage asset:temp Temp
