include <mathematics\lists\list_product_offset.scad>
include <data operations\lists\list_after_n.scad>

function adresses_array_num(input_coords,definitor,pointer,carry) = 

assert(is_list(input_coords))

assert(is_list(definitor))

assert(len(input_coords) == len(definitor))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    adresses_array_num(input_coords,definitor,0,0):

(
  (pointer>=len(input_coords)-1)
)?
    carry+input_coords[len(input_coords)-1]:

(
  (pointer<len(input_coords)-1)
)?
    adresses_array_num(input_coords,definitor,pointer+1,
        carry+
        list_product_offset(list_after_n(definitor,pointer+1),1)
        *input_coords[pointer]
    ):

assert(false,"function definition overrun for function adresses_array_num");



test_list_1 = [ for(q=[0:1:10]) q];

echo(list_product_offset(test_list_1,1));

test_list_2 = [1,1,1];

test_definitor_2 = [2,2,2];

echo(adresses_array_num(test_list_2,test_definitor_2));//unfinished
