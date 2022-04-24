# Executes when inventory changes
# As: Player

#Replace, Add, Clear Activators
#execute unless score @s ability_id matches 0 run function abilities_pack:manage_activators
tag @s add trigger_update

######################################## STARTOF Abilities ########################################

#Blaze ID:1

#Enderman ID:2

#Guardian ID:3
execute as @a[scores={ability_id=3}] run function abilities_pack:guardian/inventory_update

#Shulker ID:4

#Dragon ID:5
execute as @a[scores={ability_id=5}] run function abilities_pack:dragon/inventory_update

#Evoker ID:6
execute as @a[scores={ability_id=6}] run function abilities_pack:evoker/inventory_update

#Bat ID:7
execute as @a[scores={ability_id=7}] run function abilities_pack:bat/inventory_update

#Iron Golem ID:8

#Fox ID:9

######################################## ENDOF Abilities ########################################

#Revoke the inventory change advancement
execute as @a run advancement revoke @s only abilities_pack:inventory_change
