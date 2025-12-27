##トリガー可
#メッセージ
    tellraw @s ["",{text:"不参加に切り替えました\n次のゲームには参加しません",color:"red"}]
#演出
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 0.5
#チーム変更
    team join Fusanka @s