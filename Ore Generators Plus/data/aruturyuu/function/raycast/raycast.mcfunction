$function aruturyuu:raycast/ray_initialize {prefix:$(prefix)}
$scoreboard players set @s $(prefix).raycast.ignore_liquids $(ignore_liquids)
$execute as @s anchored eyes positioned ^ ^ ^ anchored feet run function aruturyuu:raycast/ray_run {prefix:$(prefix),distance:$(distance),function_folder:$(function_folder),function_name:$(function_name),function_arguments:$(function_arguments)}
$function aruturyuu:raycast/ray_uninitialize {prefix:$(prefix)}