#> asset:artifact/example/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:artifact/common/giveを実行することで入手可能。

data modify storage asset:artifact ID set value 2147483647
data modify storage asset:artifact Item set value "minecraft:stick"
data modify storage asset:artifact Name set value '{"text":"","extra":[{"text":"テスト君"},{"text":"二式","color":"yellow"}]}'
data modify storage asset:artifact Lore set value ['{"text":"Trigger並列化の先行版。"}','{"text":"これで神器のバリエーションが増えるといいな。"}']
# data modify storage asset:artifact CostText set value '{"text":""}'
data modify storage asset:artifact RemainingCount set value 50
data modify storage asset:artifact Triggers set value []
# Trigger 0
    data modify storage asset:artifact Triggers append value {}
    data modify storage asset:artifact Triggers[-1].Slot set value "mainhand"
    data modify storage asset:artifact Triggers[-1].Trigger set value "onAttack"
    # data modify storage asset:artifact Triggers[-1].Condition set value '{"text":""}'
    data modify storage asset:artifact Triggers[-1].AttackInfo set value {Damage:["???"],AttackType:[Physical],ElementType:[None],BypassResist:1b,IsrangeAttack:never}
    data modify storage asset:artifact Triggers[-1].MPCost set value 20
    # data modify storage asset:artifact Triggers[-1].MPRequire set value 100
    data modify storage asset:artifact Triggers[-1].LocalCooldown set value 15
    # data modify storage asset:artifact Triggers[-1].SpecialCooldown set value 5
# Trigger 2
    data modify storage asset:artifact Triggers append value {}
    data modify storage asset:artifact Triggers[-1].Slot set value "offhand"
    data modify storage asset:artifact Triggers[-1].Trigger set value "equipping"
    # data modify storage asset:artifact Triggers[-1].Condition set value '{"text":""}'
    # data modify storage asset:artifact Triggers[-1].AttackInfo set value {Damage:[0,0],AttackType:[Physical,Magic],ElementType:[Fire,Water,Thunder,None],BypassResist:1b,IsrangeAttack:never}
    data modify storage asset:artifact Triggers[-1].MPCost set value 0
    # data modify storage asset:artifact Triggers[-1].MPRequire set value 100
    data modify storage asset:artifact Triggers[-1].LocalCooldown set value 39
    # data modify storage asset:artifact Triggers[-1].SpecialCooldown set value 5
data modify storage asset:artifact CanUsedGod set value "ALL"
# data modify storage asset:artifact CustomNBT set value {Unbreakable:1b}

function asset:artifact/common/give