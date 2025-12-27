##tick処理(全体)
#flgが1のとき
    execute if score $game_flg Game matches 1 run function sys:main/countdown/ready
#flgが2のとき
    execute if score $game_flg Game matches 2 run function sys:main/tick