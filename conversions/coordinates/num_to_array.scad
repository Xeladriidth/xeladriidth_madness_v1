include <master_connector.scad>

num_to_array = "

";

function num_to_array(input_coordinates,input_structure,pointer,carry) = 

assert(is_num(input_coordinates))

assert(is_list(input_structure))

(
  (ndef(pointer))
||(ndef(carry))
)?
    num_to_array(input_coordinates,input_structure,0,[]):

(
  (pointer>=len(input_structure))
)?
    carry:

(
  (pointer<len(input_structure))
)?
    num_to_array(
        modulus(
            input_coordinates,
            list_product_offset(list_after_n(input_structure,pointer+1),1)
        ),
    input_structure,
    pointer+1,
    concat(carry,
        quotor(
            input_coordinates,
            list_product_offset(list_after_n(input_structure,pointer+1),1)
        )
        )
    ):

assert(false,"function definition overrun for function num_to_array");

test_structure_1 = [2,2,2];

test_coordinates_1 = 14;

echo(num_to_array(test_coordinates_1,test_structure_1));

for(q=[0:1:26]) 

echo(num_to_array(q,test_structure_1));//unfinished
