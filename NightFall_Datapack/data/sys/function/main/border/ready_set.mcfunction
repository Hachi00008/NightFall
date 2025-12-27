##初期のアンチを設定
#DEBUG
    execute if score $dummy Size_rank matches 0 run worldborder set 150
#TINY
    execute if score $dummy Size_rank matches 1 run worldborder set 150
#SMALL
    execute if score $dummy Size_rank matches 2 run worldborder set 250
#MEDIUM
    execute if score $dummy Size_rank matches 3 run worldborder set 350
#LARGE
    execute if score $dummy Size_rank matches 4 run worldborder set 500
#HUGE
    execute if score $dummy Size_rank matches 5 run worldborder set 650