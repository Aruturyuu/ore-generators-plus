$data modify storage aruturyuu:loop.forward temporary set from storage aruturyuu:$(storage_name) $(storage_array)
$data modify storage aruturyuu:loop.forward info set value {storage_name:$(storage_name),storage_array:$(storage_array),function_folder:$(function_folder),function_name:$(function_name)}
function aruturyuu:loop/forward_loop_iteration with storage aruturyuu:loop.forward temporary[-1]
data remove storage aruturyuu:loop.forward info
data remove storage aruturyuu:loop.forward temporary