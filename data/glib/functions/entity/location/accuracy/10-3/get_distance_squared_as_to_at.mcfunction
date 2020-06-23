#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/accuracy/10-3/get_distance_squared_as_to_at
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy

scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var run data get entity @s Pos[0] 1000
execute store result score @s glib.var2 run data get entity @s Pos[1] 1000
execute store result score @s glib.var3 run data get entity @s Pos[2] 1000

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Distance"]}

execute store result score @s glib.var4 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[0] 1000
execute store result score @s glib.var5 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[1] 1000
execute store result score @s glib.var5 as @e[tag=Glib_Get_Distance] run data get entity @s Pos[2] 1000

kill @e[tag=Glib_Get_Distance]

scoreboard players operation @s glib.var4 -= @s glib.var
scoreboard players operation @s glib.var5 -= @s glib.var2
scoreboard players operation @s glib.var5 -= @s glib.var3

scoreboard players operation @s glib.var4 *= @s glib.var4
scoreboard players operation @s glib.var5 *= @s glib.var5
scoreboard players operation @s glib.var5 *= @s glib.var5

scoreboard players operation @s glib.res = @s glib.var4
scoreboard players operation @s glib.res += @s glib.var5
scoreboard players operation @s glib.res += @s glib.var5
