
# SYSTEME SELECT/CANCEL
# Fonction qui g�re la suppression du centre et un reset global du syst�me
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

scoreboard players tag @e remove RS
scoreboard players reset @e list

kill @e[name=RS_Centre]

tellraw @p ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]