##進捗解除
#ファーストブラッド
    execute as @a if entity @s[tag=first_blood] run advancement grant @s only sys:display/first_blood
#3日間生存
    execute as @a if score @s Alive_day matches 3.. run advancement grant @s only sys:display/alive_three_day
#5日間生存
    execute as @a if score @s Alive_day matches 5.. run advancement grant @s only sys:display/alive_five_day
#7日間生存
    execute as @a if score @s Alive_day matches 7.. run advancement grant @s only sys:display/alive_seven_day
#10日間生存
    execute as @a if score @s Alive_day matches 10.. run advancement grant @s only sys:display/alive_ten_day
#勝者
    execute as @a if entity @s[tag=winner] run advancement grant @s only sys:display/winner
#タグを削除
    tag @a remove winner