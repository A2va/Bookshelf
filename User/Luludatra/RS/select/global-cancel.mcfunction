
# SYSTEME SELECT/CANCEL
# Fonction qui g�re la suppression du centre et un reset global du syst�me
# by Luludatra

# -------------------------------------------------------------

scoreboard players tag @e remove RS
scoreboard players reset @e list

kill @e[name=RS_Centre]

tellraw @p ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]