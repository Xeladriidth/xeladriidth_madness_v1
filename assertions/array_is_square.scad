//scope: provide information on whether the array is "square", as in every sublayer conforms to the same dimensionality and size

use <array_dimensionality.scad>

function array_is_square(input,index) = 

assert(is_list(input)||!is_undef(index))

(index==undef)?
    array_is_square(input,0):
    
(
(len(input[index])!=len(input[0]))
)?
    false:
    
(
(index>=len(input)-1)
)?
    true:
    
   array_is_square(input,index+1);
    
    echo(array_is_square([[2,2],[2,2]]));