##tick処理(プレイヤー)
#スポーンポイントの設定
    spawnpoint @s ~ ~ ~ ~ ~
#参加、不参加切り替え
    #参加
        execute if score @s Join_toggle matches 1 run function sys:player/toggle_check/sanka
    #不参加
        execute if score @s Join_toggle matches 2 run function sys:player/toggle_check/fusanka
    #トリガーの有効化
        scoreboard players enable @s Join_toggle
#リセット
    advancement revoke @s only sys:system/tick