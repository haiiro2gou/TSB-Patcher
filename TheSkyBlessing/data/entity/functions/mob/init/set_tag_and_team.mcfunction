#> entity:mob/init/set_tag_and_team
#
#
#
# @within function entity:mob/init/

execute unless entity @s[type=!#entity:mob/passive,type=!#entity:mob/neutral_friend] run tag @s add Friend
execute unless entity @s[type=!#entity:mob/hostile,type=!#entity:mob/neutral_enemy] run tag @s add Enemy
