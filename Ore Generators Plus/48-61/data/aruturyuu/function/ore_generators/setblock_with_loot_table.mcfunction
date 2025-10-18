$execute if data storage aruturyuu:ore_generators to_replace[{data:{x:$(x),y:$(y),z:$(z),d:"$(d)"}}] run return fail
$data modify storage aruturyuu:ore_generators to_replace append value {data:{x:$(x),y:$(y),z:$(z),d:"$(d)"}}
$execute in $(d) run summon minecraft:armor_stand $(x) $(y) $(z) {Tags:['generator_setblock_dummy_$(x)_$(y)_$(z)'],Invulnerable:1b,Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,DisabledSlots:4144959}
$execute in $(d) run loot replace entity @e[tag=generator_setblock_dummy_$(x)_$(y)_$(z),limit=1,sort=nearest] armor.head loot aruturyuu:generator_$(t)_$(di)
$data modify storage aruturyuu:ore_generators positions[{data:{x:$(x),y:$(y),z:$(z),d:"$(d)"}}].data.b set from entity @e[tag=generator_setblock_dummy_$(x)_$(y)_$(z),limit=1,sort=nearest] ArmorItems[3].id
$function aruturyuu:ore_generators/setblock with storage aruturyuu:ore_generators positions[{data:{x:$(x),y:$(y),z:$(z),d:"$(d)"}}].data
$kill @e[tag=generator_setblock_dummy_$(x)_$(y)_$(z),limit=1,sort=nearest]
