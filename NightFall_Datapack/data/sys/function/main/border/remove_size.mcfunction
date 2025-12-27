##ボーダーのサイズ変更
#DEBUG
    $execute if score $dummy Size_rank matches 0 run worldborder add -20 $(time)
#TINY
    $execute if score $dummy Size_rank matches 1 run worldborder add -20 $(time)
#SMALL
    $execute if score $dummy Size_rank matches 2 run worldborder add -30 $(time)
#MEDIUM
    $execute if score $dummy Size_rank matches 3 run worldborder add -40 $(time)
#LARGE
    $execute if score $dummy Size_rank matches 4 run worldborder add -50 $(time)
#HUGE
    $execute if score $dummy Size_rank matches 5 run worldborder add -60 $(time)