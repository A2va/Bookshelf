#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.16.1
# Last check:

# Original path: glib:health/safe_kill
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#health
# Parallelizable: true

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players reset @s[type=!player,tag=!glib.permanent]
tp @s[type=!player,tag=!glib.permanent] ~ 0 ~
kill @s[type=!player,tag=!glib.permanent]
