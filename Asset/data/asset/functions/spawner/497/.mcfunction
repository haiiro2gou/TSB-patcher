#> asset:spawner/497/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:182,Y:172,Z:-187}] in overworld positioned 182 172 -187 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:spawner/497/register