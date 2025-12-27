##昼に切り替え
#見た目変更
    time set noon
#フェーズの変更
    scoreboard players set $dummy Phase 0
#タイマーを設定
    scoreboard players operation $time Timer = $day Timer
#日数の変更
    scoreboard players add $dummy Day 1
#ボスバー関連
    bossbar remove timer
    bossbar add timer ["",{score:{name:"$dummy",objective:"Day"},color:"#f37820"},{text:"日目：現在のフェーズ "},{text:"昼",color:"#f37820",bold:true}]
    bossbar set timer style notched_10
    bossbar set timer color red
    bossbar set timer players @a
#ボスバーの最大値を設定
    execute store result bossbar timer max run scoreboard players get $time Timer
#pvpのオフ
    gamerule pvp false
#7日目以降は常にpvpオン
    execute if score $dummy Day matches 7.. run gamerule pvp true
#演出
    execute if score $dummy Day matches 2.. as @a at @s run playsound block.iron_door.open master @s ~ ~ ~ 2.0 0.5
    execute if score $dummy Day matches 2.. as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 2.0 1.0
#メッセージ
    execute if score $dummy Day matches 2..6 run tellraw @a ["",{text:"昼",color:"#f37820",bold:true},{text:"になりました。"},{text:"\npvpの制限をかけます。\nまた、安置の縮小を停止します"}]
    execute if score $dummy Day matches 7 run tellraw @a ["",{text:"昼",color:"#f37820",bold:true},{text:"になりました。"},{text:"\nこれより、pvpの制限をなくし常時スリップダメージが入るようなります。"}]
    execute if score $dummy Day matches 8.. run tellraw @a ["",{text:"昼",color:"#f37820",bold:true},{text:"になりました。"}]