##トリガー可
#メッセージ
    tellraw @s ["",{text:"参加に切り替えました\n次のゲームに参加します",color:"green"}]
#演出
    playsound entity.player.levelup master @s ~ ~ ~ 1.0 1.0
#チーム変更
    team join Sanka @s