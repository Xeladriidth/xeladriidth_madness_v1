// directive: function recieves vertex grid of n dimensionality, adds certain linear dimensionality with known span

include <master_connector.scad>

function linear_expand(input_geometry,span,pointer,carry) = 

assert(is_list(input_geometry))

assert(is_num(span))

(
  (is_undef(pointer))
&&(is_undef(carry))
)?
    linear_expand(input_geometry,span,0,[]):

(
  (pointer>=len(input_data)) 
)?
    carry:

(
  (pointer<len(input_data))
)?
    linear_expand(input_geometry,span,pointer+1,
        concat(carry,
            concat(input_geometry[pointer],span/2,span/2)
        )
    ):

assert(false,"function definition overrun for function master_connector.scad");//unfinished
