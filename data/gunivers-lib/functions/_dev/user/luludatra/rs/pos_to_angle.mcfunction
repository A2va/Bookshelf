
# SYSTEME POSITION A ANGLE
# Trouver l'angle d'un triangle rectangle form� des coordonn�es entre entit�es et centre
# by Luludatra

# ---------------------------------------------------------------------------------------

execute @s[tag=RS] ~ ~ ~ /function RS:pos
execute @e[name=RS_Centre] ~ ~ ~ /function RS:pos
execute @s[tag=RS] ~ ~ ~ /function RS:pos_dist
execute @s[tag=RS] ~ ~ ~ /function RS:hypotenuse
execute @s[tag=RS] ~ ~ ~ /function RS:angle

# Angle stock� sur le score AngleA





