#> asset:spawner/315/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:293,Y:49,Z:283}] in overworld positioned 293 49 283 if entity @p[distance=..40] run function asset:spawner/315/register