# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Loop

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:
scoreboard players tag @s remove FactorIncrease

scoreboard players tag @s[score_Tmp1_min=1001] add FactorIncrease
scoreboard players tag @s[score_Tmp2_min=1001] add FactorIncrease
scoreboard players tag @s[score_Tmp3_min=1001] add FactorIncrease
scoreboard players tag @s[score_Tmp1=-1001] add FactorIncrease
scoreboard players tag @s[score_Tmp2=-1001] add FactorIncrease
scoreboard players tag @s[score_Tmp3=-1001] add FactorIncrease

scoreboard players add @s[tag=FactorIncrease] Tmp4 1
scoreboard players operation @s[tag=FactorIncrease] Tmp1 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Tmp2 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Tmp3 /= 2 Constant

# DEBUG
# tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
# execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~ ~ ~ {Block:"minecraft:fence",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG

scoreboard players tag @s remove MoveLoop

scoreboard players tag @s[score_Tmp1_min=1001] add MoveLoop
scoreboard players tag @s[score_Tmp2_min=1001] add MoveLoop
scoreboard players tag @s[score_Tmp3_min=1001] add MoveLoop
scoreboard players tag @s[score_Tmp1=-1001] add MoveLoop
scoreboard players tag @s[score_Tmp2=-1001] add MoveLoop
scoreboard players tag @s[score_Tmp3=-1001] add MoveLoop

execute @s[tag=MoveLoop] ~ ~ ~ function Gunivers-Lib:Entity/Location/Child/Move-Loop

