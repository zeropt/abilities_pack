# Clear player ability
# As: Player

#clear objectives
scoreboard players set @s ability_id 0
scoreboard players set @s activate_cd 0
scoreboard players set @s act_target 0
scoreboard players set @s health_tracker 0
scoreboard players reset @s effect_id

#clear activators
clear @s #abilities_pack:activators{activator:1b}

#clear placeholders
clear @s #abilities_pack:placeholders{placeholder:1b}

#clear traits
clear @s #abilities_pack:traits{trait:1b}

#kill rain_test armor_stands
execute at @s as @e[type=armor_stand,tag=rain_test] if score @s player_id = @p player_id run kill @s

#clear special effects
effect clear @s minecraft:health_boost

#Title
title @s title {"text":"Ability Cleared","color":"red"}
