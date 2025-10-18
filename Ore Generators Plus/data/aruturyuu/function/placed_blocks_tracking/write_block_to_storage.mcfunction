summon minecraft:armor_stand ~ ~ ~ {Tags:['placed_block_dummy'],Invulnerable:1b,Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute store result storage aruturyuu:placed_blocks_tracking temporary.data.x int 1 run data get entity @e[tag=placed_block_dummy,limit=1,sort=nearest] Pos[0] 1
execute store result storage aruturyuu:placed_blocks_tracking temporary.data.y int 1 run data get entity @e[tag=placed_block_dummy,limit=1,sort=nearest] Pos[1] 1
execute store result storage aruturyuu:placed_blocks_tracking temporary.data.z int 1 run data get entity @e[tag=placed_block_dummy,limit=1,sort=nearest] Pos[2] 1
data modify storage aruturyuu:placed_blocks_tracking temporary.data.d set from entity @s Dimension
function aruturyuu:placed_blocks_tracking/add_block_to_storage with storage aruturyuu:placed_blocks_tracking temporary.data
data remove storage aruturyuu:placed_blocks_tracking temporary
kill @e[tag=placed_block_dummy,limit=1,sort=nearest]