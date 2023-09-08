include <master_connector.scad>

is_array = "

";

function is_array(input_data,pointer) = 

assert(!is_undef(input_data))

(
  (!is_list(input_data))
)?
    false:

(
  (ndef(pointer))
)?
    is_array(input_data,0):

(
  (pointer>=len(input_data))
&&(!is_list(input_data[pointer]))
)?
    false:

(
  (pointer<len(input_data))
&&(is_list(input_data[pointer]))
)?
    true:

(
  (pointer<len(input_data))
&&(!is_list(input_data[pointer]))
)?
    is_array(input_data,pointer+1):

assert(false,"function definition overrun for function is_array");

//test_array_1 =[for(q=[0:1:10]) q,[11,12]];

//echo(test_array_1);

//echo(is_array(test_array_1));//unfinished
