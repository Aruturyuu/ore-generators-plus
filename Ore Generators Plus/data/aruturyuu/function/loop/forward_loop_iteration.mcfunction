data remove storage aruturyuu:loop.forward temporary[-1]
execute if data storage aruturyuu:loop.forward temporary[-1] run function aruturyuu:loop/forward_loop_iteration with storage aruturyuu:loop.forward temporary[-1]
$data modify storage aruturyuu:loop.forward iteration_data set value $(data)
data modify storage aruturyuu:loop.forward iteration_data merge from storage aruturyuu:loop.forward info
function aruturyuu:loop/forward_loop_iteration_action with storage aruturyuu:loop.forward iteration_data
data remove storage aruturyuu:loop.forward iteration_data