#> entity:mob/_index.d
# @private

#> General purpose Tag
# @public
    #declare tag Friend
    #declare tag Enemy
    #declare tag Enemy.Boss
    #declare tag Projectile
    #declare tag Npc
    #declare tag Object
    #declare tag Uninterferable

#> InitTag
# @within function
#   core:tick/
#   entity:mob/init/
    #declare tag AlreadyInitMob

#> MobAsset側で定義されたMobに付けられるタグ
# @within function
#   core:tick/
#   entity:mob/init/
    #declare tag AssetMob
