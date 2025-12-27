##終了処理
#タグを削除
    tag @e remove death_attack
#勝者の生存日数を記録
    scoreboard players operation @a[tag=winner] Alive_day = $dummy Day
#タイトル
    title @a title ["",{text:"Game Set!"}]
    title @a subtitle ["",{text:"Winner："},{selector:"@a[tag=winner]",color:"green"}]
#演出
    execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.0
#進捗解除
    schedule function sys:main/get_advancement 5s
#リセット
    schedule function sys:main/reset 10s