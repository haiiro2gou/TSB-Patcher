#> asset:spawner/296/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-188,Y:135,Z:219}] in overworld positioned -188 135 219 if entity @p[distance=..40] run function asset:spawner/296/register