include <master_connector.scad>

array_to_num = "
function returns a num which is the numerical position of an element in an array, specified by a vector
arguments -input_coordinates,expects coordinates of target element,expects list
-input_structure, total structure of the viewed array,expects list
function expects both len to be equal
";

function array_to_num(input_coordinates,input_structure,pointer,carry) = 

assert(is_list(input_coordinates))

assert(is_list(input_structure))

assert(len(input_coordinates) == len(input_structure))

(
  (ndef(pointer))
||(ndef(carry))
)?
    array_to_num(input_coordinates,input_structure,0,0):

(
  (pointer>=len(input_coordinates))
)?
    carry:

(
  (pointer<len(input_coordinates))
)?
    array_to_num(input_coordinates,input_structure,pointer+1,
        carry+
        list_product_offset(list_last_n(input_structure,pointer),1)
    ):

assert(false,"function definition overrun for function array_to_num");//unfinished
