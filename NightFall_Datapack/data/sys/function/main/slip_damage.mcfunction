##スリップダメージ処理
#7日目
    execute if score $dummy Day matches 7 as @a[scores={Alive=1}] run damage @s 1 generic by @n[type=armor_stand]
#8日目
    execute if score $dummy Day matches 8 as @a[scores={Alive=1}] run damage @s 2 generic by @n[type=armor_stand]
#9日目
    execute if score $dummy Day matches 9 as @a[scores={Alive=1}] run damage @s 3 generic by @n[type=armor_stand]
#10日目以降
    execute if score $dummy Day matches 10.. as @a[scores={Alive=1}] run damage @s 4 generic by @n[type=armor_stand]