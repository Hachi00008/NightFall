##トリガー可能か
#可能
    execute if score $game_flg Game matches 0 run function sys:player/toggle/join_fusanka
#不可能
    execute unless score $game_flg Game matches 0 run function sys:player/toggle/untoggle_fusanka
#リセット
    scoreboard players reset @s Join_toggle
