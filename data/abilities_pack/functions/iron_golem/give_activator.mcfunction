# Give player the iron_golem activator
# As: Player

# if act_target == 0: slot stick
execute as @s[scores={act_target=0}] run give @s stick{display:{Name:'{"text":"Ability Slot"}'},CustomModelData:11800,activator:1b} 1

# if act_target >= 1: poppy
execute as @s[scores={act_target=1..}] run give @s poppy{display:{Name:'{"text":"Lucky Poppy","color":"red"}'},CustomModelData:11808,activator:1b} 1
