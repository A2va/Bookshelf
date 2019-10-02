
# SYSTEME SQRT
# Resolution de la racine carr�e d'un nombre
# by Luludatra

# ---------------------------------------------------------------------------------------

scoreboard objectives add Operation dummy
scoreboard objectives add Constant dummy
scoreboard objectives add Temp dummy
scoreboard objectives add Temp2 dummy
scoreboard objectives add Loop dummy

scoreboard players set 2 Constant 2
scoreboard players set -1 Constant -1

# Operation = Score sur lequel faire la racine

# ---------------------------------------------------------------------------------------

# V�rification de la pr�sence d'un nombre n�gatif
scoreboard players operation @s[score_Operation=-1] Operation *= -1 Constant 

# Operation
scoreboard players operation @s Temp = @s Operation
scoreboard players operation @s Temp /= 2 Constant

# Boucle � executer 20 fois
scoreboard players set @s Loop 20
execute @s ~ ~ ~ function RS:sqrt_2

# Save
scoreboard players operation @s Operation = @s Temp

