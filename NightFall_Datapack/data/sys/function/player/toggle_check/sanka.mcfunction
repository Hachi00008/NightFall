##トリガー可能か
#可能
    execute if score $game_flg Game matches 0 run function sys:player/toggle/join_sanka
#不可能
    execute unless score $game_flg Game matches 0 run function sys:player/toggle/untoggle_sanka
#リセット
    scoreboard players reset @s Join_toggle
