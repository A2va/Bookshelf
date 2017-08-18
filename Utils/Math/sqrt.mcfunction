# NAME: Racine carr�
# PATH: Gunivers-Lib:Utils/Math/Sqrt

# AUTHOR: Luludatra
# CONTRIBUTORS:
# - Theogiraudet/Oromis

# VERSION: 1.1
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Gunivers-Lib:Import/Math (MCfunction)
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)

# INPUT:
# - Tmp (score dummy)

# OUTPUT:
# - Res (score dummy)

# NOTE: Resolution de la racine carr�e d'un nombre

# CONFIGURATION:
scoreboard players set @s Tmp2 20
# -> Permet de g�rer la pr�cision du resultat. Valeur par d�faut: 20. Plus cette valeure est grande, plsu le r�sultat sera pr�cis et l'execution de la fonction sera lourde.

# CODE:

# V�rification de la pr�sence d'un nombre n�gatif
scoreboard players operation @s Res = @s Tmp
scoreboard players operation @s[score_Res=-1] Res *= -1 Constant 

# Operation
scoreboard players operation @s Tmp3 = @s Res
scoreboard players operation @s Tmp3 /= 2 Constant

# Boucle � executer {Tmp2} fois
execute @s ~ ~ ~ function Gunivers-Lib:Utils/Math/Sqrt-Loop

# Save
scoreboard players operation @s Res = @s Temp4

