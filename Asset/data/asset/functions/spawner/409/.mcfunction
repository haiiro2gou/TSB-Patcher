#> asset:spawner/409/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:the_end,X:101,Y:126,Z:261}] in the_end positioned 101 126 261 if entity @p[distance=..40] run function asset:spawner/409/register