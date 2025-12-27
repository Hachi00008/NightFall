##tick処理(プレイ中)
#タイマーを減らす
    scoreboard players remove $time Timer 1
#タイマーに代入
    execute store result bossbar timer value run scoreboard players get $time Timer
#0のとき
    #夜
        execute if score $time Timer matches ..0 if score $dummy Phase matches 0 run function sys:main/change_time/night
    #昼
        execute if score $time Timer matches ..0 if score $dummy Phase matches 1 run function sys:main/change_time/day
#7日目以降のダメージ処理
    execute if score $dummy Day matches 7.. run scoreboard players add $time Slip_timer 1
    execute if score $time Slip_timer matches 40.. run function sys:main/slip_damage
    execute if score $time Slip_timer matches 40.. run scoreboard players reset $time Slip_timer