# Main Loop
# As: Player

#New Player
execute as @a unless score @s player_id matches 0.. run function abilities_pack:new_player

#Pick an ability
execute as @a if score @s ability_id matches 0 run scoreboard players enable @s pick_ability 
execute as @a if score @s pick_ability matches 1.. run function abilities_pack:admin/ability_selector
execute as @a if score @s pick_ability matches 1.. run scoreboard players reset @s pick_ability


#Abilities require activator in Slot:0b
execute as @a if score @s ability_id matches 1.. unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator
execute as @a if score @s ability_id matches 1.. unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run function abilities_pack:give_activator
execute as @a if score @s ability_id matches 1.. unless entity @s[nbt={Inventory:[{Slot:0b}]}] unless predicate abilities_pack:in_slot run function abilities_pack:clear_activator

#Kill all dropped trait items and activators
kill @e[type=item,nbt={Item:{tag:{activator:1b}}}]
kill @e[type=item,nbt={Item:{tag:{trait:1b}}}]

#Activator right-click detection
scoreboard players set @a activate 0
execute as @a if predicate abilities_pack:in_mainhand if score @s coas_counter matches 1.. run scoreboard players set @s activate 1
scoreboard players set @a coas_counter 0

#Decrement Damage Cooldown
execute as @a if score @s damage_cd matches 1.. run scoreboard players remove @s damage_cd 1

#Decrement Activate Cooldown
execute as @a if score @s activate_cd matches 1.. run scoreboard players remove @s activate_cd 1

#area effect cloud targeting
execute as @e[type=minecraft:area_effect_cloud] if score @s target_id matches ..2147483647 run function abilities_pack:cloud_targeting

######################################## STARTOF Abilites ########################################

#Test ID:-1
execute as @a if score @s ability_id matches -1 run function abilities_pack:test/loop

#Blaze ID:1
execute as @a if score @s ability_id matches 1 run function abilities_pack:blaze/loop

#Enderman ID:2
execute as @a if score @s ability_id matches 2 run function abilities_pack:enderman/loop

#Enderman ID:3
execute as @a if score @s ability_id matches 3 run function abilities_pack:guardian/loop

######################################## ENDOF Abilities ########################################
