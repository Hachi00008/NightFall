##死亡時の処理
#最後に攻撃したエンティティにタグを付ける
    execute on attacker run tag @s add death_attack
#スコア変更
    scoreboard players set @s Alive 0
#生存日数を記録
    scoreboard players operation @s Alive_day = $dummy Day
#生存人数カウント
    execute store result score $alive Player_count if entity @a[scores={Alive=1}]
#終了確認
    execute if score $alive Player_count matches ..1 run tag @s add winner
    execute if score $alive Player_count matches ..1 run return run function sys:main/end
#ファーストブラッド確認処理
    scoreboard players operation $all Player_count = $alive Player_count
    scoreboard players operation $all Player_count += #1 Constant
    execute if score $all Player_count = $dummy Player_count run function sys:player/death/first_blood
#演出
    execute if score $alive Player_count matches 0.. run playsound entity.wither.death master @s ~ ~ ~ 0.5 2.0
#メッセージ
    execute if score $alive Player_count matches 0.. run tellraw @a ["",{text:"[",bold:true},{text:"KILL",bold:true,color:"red"},{text:"] "},{selector:"@e[tag=death_attack]",bold:true},{text:" >>",color:"green"},{text:">>",color:"yellow"},{text:">> ",color:"red"},{selector:"@s",color:"dark_red",bold:true},{text:" (残りプレイヤー数：",bold:true},{score:{name:"$alive",objective:"Player_count"},bold:true,color:"dark_red"},{text:"人)",bold:true}]
#ゲームモード変更
    gamemode spectator @s
#リセット
    tag @e remove death_attack