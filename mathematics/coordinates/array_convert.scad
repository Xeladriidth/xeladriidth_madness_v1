array_convert = "
function returns array coordinates of type opposite to input
arguments 
";

include <mathematics/coordinates/array_to_num.scad>
include <mathematics/coordinates/num_to_array.scad>

function array_convert(input_coordinates,input_structure) = 

assert(is_list(input_structure))

(
  (is_num(input_coordinates))
)?
    array_to_num(input_coordinates,input_structure):

(
  (is_list(input_coordinates))
)?
    num_to_array(input_coordinates,input_structure):

assert(false,"unrecognized coordinate format in function array_convert");//unfinished
