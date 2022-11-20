#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:imitate_ori_h
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity bs.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

#   Relative Orientation
execute at @e[tag=bs.id.match,limit=1,sort=nearest] run function bs.orientation:get_h/accuracy/10-3
scoreboard players operation @s bs.oriH += @s bs.link.rh

function bs.orientation:set_h/accuracy/10-3
