#> core:patcher/migration/v0.4.6/
#
# v0.4.5 -> v0.4.6
#
# @within function core:patcher/migration/

# マイグレーション先バージョン設定
    data modify storage global Patcher.Version set value "v0.4.6"

#> from: a14291c531d19359a23b3796494e62de5ef0c2f3
# @private
    scoreboard objectives add C.LifeTime dummy

#> from: 8f8442fcdc1cc33459481daa87b2ec2c7f38e0c8
# @private
    scoreboard objectives add LD.Tick dummy
    scoreboard objectives add LD.UserID dummy
    scoreboard objectives add LE.OldRotationY dummy

#> from: fb79803ab2d302e5595c8a2ab4d746275d5461de
# @private
    scoreboard objectives add K4.AttackCD dummy

#> from: d983c678ba07ea6e40f54401346fa036efd2c1cc
# @private
    scoreboard objectives add KH.Tick dummy

#> from: 5eed30688cab41aaacbadd1a7f62615f856b5b49
# @private
    scoreboard objectives add KI.Tick dummy
    scoreboard objectives add KI.UserID dummy

#> from: c52aa9fa9ba24ec49475a9fe1fde02a1d92fbb2e
# @private
    scoreboard objectives add L2.Tick dummy
    scoreboard objectives add L2.UserID dummy

#> from: 7acbfb9cd0e36390d1b743b65872aef03bf888ea
# @private
    scoreboard objectives add SU.EquipCount dummy
    scoreboard objectives add SU.CoolDown dummy

#> from: 4f3c6d9bddef18eeb4e34028f2aa51ced41febe8
# @private
    scoreboard objectives add ST.OwnerID dummy
    scoreboard objectives add ST.FlyingTick dummy
    scoreboard objectives add ST.PercentHP dummy

#> from: a6420ff6bce7fdff1d63519f37b1a26a6d9a86c9
# @private
    scoreboard objectives add SZ.CastTick dummy

#> from: afa187112154b1d9a8907de0b7528e76a498badb
# @private
    scoreboard objectives add T1.OwnerID dummy
    scoreboard objectives add T1.FlyingTick dummy
    scoreboard objectives add T1.LandingTick dummy

#> from: 53468eb3c299298996d222ce2c0b4ddade81238d
# @private
    scoreboard objectives add T4.Tick dummy
    scoreboard objectives add T4.MPPer dummy

#> from: 863b8157354a11b6507760decfd55da307077b19
# @private
    scoreboard objectives add SP.AttackCount dummy
    scoreboard objectives add SP.Tick dummy
    scoreboard objectives add SP.WaitingTime dummy
    scoreboard objectives add SP.UserID dummy
    scoreboard objectives add SP.MaxHealth dummy

#> from: 508848e3bb368a0123cfdb625e7fa1627fe120ed
# @private
    scoreboard objectives add T3.BuffTick dummy

#> from: 9bef81b3bc9c025024efa0fa1915a960d04eb151
# @private
    scoreboard objectives add TD.EquipCount dummy
