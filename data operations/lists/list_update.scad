function list_update(input_data,projectiles,pointer) = 

assert(!is_undef(input_data))

assert(!is_undef(projectiles))

(
  (is_undef(pointer))
)?
    list_update(input_data,projectiles,0):

(
  (pointer>=len(projectiles))
)?
    input_data:

(
  (pointer<len(projectiles))
)?
    list_update(
        list_update_single(input_data,projectiles[pointer]),
    pointer+1
    ):

assert(false,"function definition overrun for function list_update");

//TOTEST//unfinished
