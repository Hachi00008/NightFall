##カウントダウン処理
#スコアを増加させる
    scoreboard players add $countdown Timer 1
#スコアごとの処理
    execute if score $countdown Timer matches 1..19 run title @a actionbar ["",{text:"ゲーム開始まで... 5"}]
    execute if score $countdown Timer matches 1 as @a at @s run playsound item.flintandsteel.use master @s ~ ~ ~ 1.0 0.6
    execute if score $countdown Timer matches 20..39 run title @a actionbar ["",{text:"ゲーム開始まで... 4"}]
    execute if score $countdown Timer matches 20 as @a at @s run playsound item.flintandsteel.use master @s ~ ~ ~ 1.0 0.6
    execute if score $countdown Timer matches 40..59 run title @a actionbar ["",{text:"ゲーム開始まで... 3"}]
    execute if score $countdown Timer matches 40 as @a at @s run playsound item.flintandsteel.use master @s ~ ~ ~ 1.0 0.6
    execute if score $countdown Timer matches 60..79 run title @a actionbar ["",{text:"ゲーム開始まで... 2"}]
    execute if score $countdown Timer matches 60 as @a at @s run playsound item.flintandsteel.use master @s ~ ~ ~ 1.0 0.6
    execute if score $countdown Timer matches 80..99 run title @a actionbar ["",{text:"ゲーム開始まで... 1"}]
    execute if score $countdown Timer matches 80 as @a at @s run playsound item.flintandsteel.use master @s ~ ~ ~ 1.0 0.6
    execute if score $countdown Timer matches 100 as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1.0 1.0
    execute if score $countdown Timer matches 100 as @a at @s run playsound entity.dragon_fireball.explode master @s ~ ~ ~ 0.5 0.5
#ゲームの開始処理
    execute if score $countdown Timer matches 99 run function sys:main/countdown/ready2
#タイトル処理
    execute if score $countdown Timer matches 100 run title @a actionbar [""]
    execute if score $countdown Timer matches 100 run title @a title ["",{text:"Game Start!"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 0 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"DEBUG",color:"gray"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 1 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"TINY",color:"aqua"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 2 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"SMALL",color:"green"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 3 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"MEDIUM",color:"yellow"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 4 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"LARGE",color:"red"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 5 run title @a subtitle ["",{text:"Now Game Rank... "},{text:"HUGE",color:"dark_purple"}]
#メッセージ
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 0 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"DEBUG\n",bold:true,color:"gray"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"150\n"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 1 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"TNIY\n",bold:true,color:"aqua"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"150\n"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 2 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"SMALL\n",bold:true,color:"green"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"250\n"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 3 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"MEDIUM\n",bold:true,color:"yellow"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"350\n"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 4 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"LARGE\n",bold:true,color:"red"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"500\n"}]
    execute if score $countdown Timer matches 100 if score $dummy Size_rank matches 5 run tellraw @a ["",{text:"\n[System] ゲームランクが決定されました。\n",bold:true},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"ゲームランク："},{text:"HUGE\n",bold:true,color:"dark_purple"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.5",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{translate:"space.7",font:"space"},{text:"初期安置半径："},{text:"650\n"}]
#ゲームモード変更
    execute if score $countdown Timer matches 100 run gamemode survival @a[scores={Joined=1}]
    execute if score $countdown Timer matches 100 run gamemode spectator @a[scores={Joined=0}]
#難易度変更
    difficulty normal
#日の変更
    execute if score $countdown Timer matches 100 run function sys:main/change_time/day
#ゲームの状態変更
    execute if score $countdown Timer matches 100 run scoreboard players set $game_flg Game 2
#スコアリセット
    execute if score $countdown Timer matches 100.. run scoreboard players set $countdown Timer 0