#> asset:spawner/304/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:356,Y:83,Z:274}] in overworld positioned 356 83 274 if entity @p[distance=..40] run function asset:spawner/304/register