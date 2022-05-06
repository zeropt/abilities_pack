# Bat Loop
# As: Player

#effects
#effect give @s hunger 1 0 true
#effect give @s weakness 1 0 true
#effect give @s speed 1 0 true

#Blinded by the light!
execute at @s unless predicate abilities_pack:is_bright run effect clear @s blindness
execute at @s if predicate abilities_pack:is_bright run effect give @s blindness 20 0 true

#bat locate
execute as @s[tag=trigger_act] run function abilities_pack:bat/activate

#bat levitation
execute as @s if predicate abilities_pack:activator_in_mainhand run function abilities_pack:abilities/bat_levitation
execute as @s if predicate abilities_pack:placeholder_in_mainhand run function abilities_pack:abilities/bat_levitation
execute as @s unless predicate abilities_pack:activator_in_mainhand unless predicate abilities_pack:placeholder_in_mainhand run function abilities_pack:abilities/bat_levitation/safe_stop

#reactivate
execute as @s[scores={activate_cd=..0,act_target=0}] run scoreboard players set @s act_target 1
