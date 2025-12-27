##スコアの初期化
#スコアの作成
    #特殊スコア
        scoreboard objectives add Join_toggle trigger
        scoreboard objectives add Death deathCount
    #通常スコア
        scoreboard objectives add Phase dummy
        scoreboard objectives add Timer dummy
        scoreboard objectives add Day dummy
        scoreboard objectives add Joined dummy
        scoreboard objectives add Alive dummy
        scoreboard objectives add Player_count dummy
        scoreboard objectives add Size_rank dummy
        scoreboard objectives add Game dummy
        scoreboard objectives add Slip_timer dummy
        scoreboard objectives add Constant dummy
        scoreboard objectives add Alive_day dummy
#スコアの設定
    scoreboard players enable @a Join_toggle
    scoreboard players set #1 Constant 1
    scoreboard players set $game_flg Game 0
    scoreboard players set $day Timer 6000
    scoreboard players set $night Timer 2400