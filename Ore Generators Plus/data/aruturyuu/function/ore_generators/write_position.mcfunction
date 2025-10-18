$execute positioned ~$(ox) ~$(oy) ~$(oz) unless predicate aruturyuu:is_ore_generator_check_block run return fail
$summon minecraft:armor_stand ~$(ox) ~$(oy) ~$(oz) {Tags:['generator_dummy_$(ox)_$(oy)_$(oz)'],Invulnerable:1b,Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,DisabledSlots:4144959}
$execute store result storage aruturyuu:ore_generators temporary.data.x int 1 run data get entity @e[tag=generator_dummy_$(ox)_$(oy)_$(oz),sort=nearest,limit=1] Pos[0] 1
$execute store result storage aruturyuu:ore_generators temporary.data.y int 1 run data get entity @e[tag=generator_dummy_$(ox)_$(oy)_$(oz),sort=nearest,limit=1] Pos[1] 1
$execute store result storage aruturyuu:ore_generators temporary.data.z int 1 run data get entity @e[tag=generator_dummy_$(ox)_$(oy)_$(oz),sort=nearest,limit=1] Pos[2] 1
$kill @e[tag=generator_dummy_$(ox)_$(oy)_$(oz),limit=1,sort=nearest]
data modify storage aruturyuu:ore_generators temporary.data.d set from entity @s Dimension
execute if dimension minecraft:overworld run data modify storage aruturyuu:ore_generators temporary.data.di set value 0
execute if dimension minecraft:the_nether run data modify storage aruturyuu:ore_generators temporary.data.di set value 1
execute if dimension minecraft:the_end run data modify storage aruturyuu:ore_generators temporary.data.di set value 2
execute unless data storage aruturyuu:ore_generators temporary.data.di run data modify storage aruturyuu:ore_generators temporary.data.di set value 3
function aruturyuu:ore_generators/add_block_to_storage_if_needed with storage aruturyuu:ore_generators temporary.data