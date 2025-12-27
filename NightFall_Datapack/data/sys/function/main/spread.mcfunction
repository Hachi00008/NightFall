##プレイヤーの散開
#TINY
    execute if score $dummy Size_rank matches 1 at @e[tag=map_center] run spreadplayers ~ ~ 20 60 false @a[team=Sanka]
#SMALL
    execute if score $dummy Size_rank matches 2 at @e[tag=map_center] run spreadplayers ~ ~ 20 90 false @a[team=Sanka]
#MEDIUM
    execute if score $dummy Size_rank matches 3 at @e[tag=map_center] run spreadplayers ~ ~ 20 120 false @a[team=Sanka]
#LARGE
    execute if score $dummy Size_rank matches 4 at @e[tag=map_center] run spreadplayers ~ ~ 20 160 false @a[team=Sanka]
    #TINY
    execute if score $dummy Size_rank matches 5 at @e[tag=map_center] run spreadplayers ~ ~ 20 200 false @a[team=Sanka]