##ゲームの開始処理
#初期化
    function sys:main/countdown/reset
#参加スコアの変更
    scoreboard players set * Joined 0
    execute as @a[team=Sanka] run scoreboard players set @s Joined 1
#生存スコアを変更
    scoreboard players set * Alive 0
    execute as @a[scores={Joined=1}] run scoreboard players set @s Alive 1
#生存人数の確認
    execute store result score $alive Player_count if entity @a[scores={Alive=1}]
#死亡進捗をリセット
    advancement revoke @a only sys:system/death
#参加人数の記録
    scoreboard players operation $dummy Player_count = $alive Player_count
#人数ランクの確定(1=TINY,2=SMALL,3=MEDIUM,4=LARGE,5=HUGE)
    execute if score $alive Player_count matches 1 run scoreboard players set $dummy Size_rank 0
    execute if score $alive Player_count matches 2..5 run scoreboard players set $dummy Size_rank 1
    execute if score $alive Player_count matches 6..9 run scoreboard players set $dummy Size_rank 2
    execute if score $alive Player_count matches 10..14 run scoreboard players set $dummy Size_rank 3
    execute if score $alive Player_count matches 15..19 run scoreboard players set $dummy Size_rank 4
    execute if score $alive Player_count matches 20..24 run scoreboard players set $dummy Size_rank 5
#中心を常に読み込む
    execute at @e[tag=map_center] run forceload add ~ ~
#ボーダーの範囲設定
    function sys:main/border/ready_set
#プレイヤーの散開
    function sys:main/spread
#hpと満腹度の回復
    effect clear @a
    effect give @a regeneration 1 255 true
    effect give @a saturation 1 50 true