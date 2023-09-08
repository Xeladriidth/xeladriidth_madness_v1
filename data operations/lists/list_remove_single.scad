include <master_connector.scad>

function list_remove_single(input_data,projectile,pointer,carry) = 

assert(is_list(input_data))

assert(is_num(projectile))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_remove_single(input_data,projectiles,0,[]):

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
&&(pointer==projectile)
)?
    list_remove_single(input_data,projectiles,pointer+1,carry):

(
  (pointer<len(input_data))
&&(pointer!=projectile)
)?
    list_remove_single(input_data,projectiles,pointer+1,
        concat(carry,
        input_data[pointer]
    )
    ):

assert(false,"function definition overrun for function list_remove_single");

//TOTEST//unfinished
