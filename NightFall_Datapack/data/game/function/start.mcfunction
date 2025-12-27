##ゲームトグル
#待機中以外なら開始しない
    execute unless score $game_flg Game matches 0 run tellraw @s ["",{text:"[ERROR] カウントダウンまたはゲーム中なので開始処理を実行できませんでした",bold:true,color:"dark_red"}]
    execute unless score $game_flg Game matches 0 run playsound block.note_block.bass master @s ~ ~ ~ 1.0 1.0
    execute unless score $game_flg Game matches 0 run return 0
#メッセージ
    tellraw @a ["",{text:"\n[System] まもなくゲームが開始します...\n[Tips] F3+Dを押すことでチャット履歴を消せます\n",bold:true}]
    execute as @a at @s run playsound block.amethyst_block.place master @s ~ ~ ~ 2.0 2.0
    schedule function sys:main/countdown/ready0 10s
#中心設定用のアマスタ召喚
    execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["map_center"],Marker:true,Invisible:true}