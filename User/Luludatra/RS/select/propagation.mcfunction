
# SYSTEME SELECTION/PROPAGATION
# Fonction qui s�lectionne toutes les ArmorStands dans un rayon de 2 autour de toutes les ArmorStands s�lectionn�es.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

execute @e[tag=RS] ~ ~ ~ /scoreboard players tag @e[type=Armor_Stand,tag=!RS,r=2,name=!RS_Centre] add RS
execute @e[tag=RS] ~ ~ ~ /execute @e[type=Armor_Stand,tag=!RS,r=2,c=1,name=!RS_Centre] ~ ~ ~ /function RS:select/propagation