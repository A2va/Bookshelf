
# SYSTEME SELECT/CANCEL
# Fonction qui g�re la suite d'action apr�s la s�lection des ArmorStands.
# by Luludatra

# -------------------------------------------------------------

scoreboard players set @e[name=RS_Centre,score_step_min=1,score_step=1] step 2

execute @e[name=RS_Centre,score_step_min=2,score_step=2] ~ ~ ~ /function RS:tellraw/tellraw

execute @e[tag=RS] ~ ~ ~ /function RS:PosToAngle


