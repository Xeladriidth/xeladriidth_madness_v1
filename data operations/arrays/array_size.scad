array_size = "
function returns the total amount of items in an array
arguments -input(expects array) -index (init 0) -carry (init [])
";

include <master_connector.scad>

function array_size(input_data,pointer,carry) =

assert(array_is_euclidic(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    array_size(input_data,0):

//is the subelement an array too?

(
  (is_array(input_data[0]))
)?
    array_size(input_data[0],concat(carry,[len(input_data)])):

(
  (!is_array(input_data[0]))
)?
    concat(carry,len(input_data)):

assert(false,"function definition overrun for function array_size");

echo(array_size(test_array_1));

test_array_1 = (
fold( [for(q=[0:1:127]) q] , [2,2,2])
);

echo(test_array_1);//unfinished
