##夜に切り替え
#見た目変更
    time set night
#フェーズの変更
    scoreboard players set $dummy Phase 1
#タイマーを設定
    scoreboard players operation $time Timer = $night Timer
    execute store result storage sys:border time int 1 run scoreboard players get $night Timer
#ボスバー関連
    bossbar remove timer
    bossbar add timer ["",{score:{name:"$dummy",objective:"Day"},color:"#206cdf"},{text:"日目：現在のフェーズ "},{text:"夜",color:"#206cdf",bold:true}]
    bossbar set timer style notched_10
    bossbar set timer color blue
    bossbar set timer players @a
#ボスバーの最大値を設定
    execute store result bossbar timer max run scoreboard players get $time Timer
#ボーダーの縮小
    execute if score $dummy Day matches ..6 run function sys:main/border/remove_size with storage sys:border
#pvpのオフ
    gamerule pvp true
#演出
    execute as @a at @s run playsound block.iron_door.close master @s ~ ~ ~ 2.0 0.5
    execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 2.0 0.5
#メッセージ
    execute if score $dummy Day matches ..6 run tellraw @a ["",{text:"夜",color:"#206cdf",bold:true},{text:"になりました。"},{text:"\nこれより2分間pvpの制限を解除します\nまた、安置の縮小を開始します"}]
    execute if score $dummy Day matches 6.. run tellraw @a ["",{text:"夜",color:"#206cdf",bold:true},{text:"になりました。"}]