include <master_connector.scad>

function list_remove(input_data,projectiles,pointer) =

assert(is_list(input_data))

assert(!is_array(input_data))

assert(is_list(projectiles))

assert(list_only_nums(projectiles))

(
  (is_undef(pointer))
)?
    list_remove(input_data,projectiles,0):

(
  (pointer>len(projectiles)) 
)?
    input_data:

(
  (pointer<=len(projectiles))
)?
    list_remove(
        list_remove_single(input_data,projectiles[pointer]
        )
    ,pointer+1
    ):

assert(false,"function definition overrun for function list_remove");//unfinished
