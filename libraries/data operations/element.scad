use <is_array.scad>

function element(input,coordinates,index) =

(
  (is_num(input))
)?
    undef: // here shalt be a function that delivers the n-th digit
    
(
  is_list(input)
&&(is_num(coordinates))
)? //process for list
    input[coordinates]:

(
  is_list(input)
&&(is_list(coordinates))
)? //process for list
    assert(false,"a list cannot have nested coordinates to be retrieved by element"):

(
  (is_array(input))
)? //initialise for array retrieval; hand over to dedicated function
    element_array(input,coordinates):

(
  (is_string(input))
&&(is_num(coordinates))
)?
    input[coordinates]:

(
  (is_string(input))
&&(is_list(coordinates))
)?
    assert(false,"strings are not nested and thus cannot be retrieved by nested coordinates"):

"thou hast reached the end of the coordinate function, woe be unto you";
