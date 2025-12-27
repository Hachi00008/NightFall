##リセット処理
#flg変更
    scoreboard players set $game_flg Game 0
#日数
    scoreboard players set $dummy Day 0
#スリップタイマー
    scoreboard players reset $time Slip_timer
#ボスバー
    bossbar remove timer
#見かけ変更
    time set noon
#ボーダー変更
    worldborder set 30000000
#中心設定用のアマスタkill
    kill @e[tag=map_center]
#メッセージ
    tellraw @s ["",{text:"[Success] ゲームのリセットが完了しました",bold:true,color:"green"}]
#演出
    playsound entity.player.levelup master @s ~ ~ ~ 1.0 1.0