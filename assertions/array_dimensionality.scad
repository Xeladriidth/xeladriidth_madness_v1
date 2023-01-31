function array_dimensionality(input,index,carry) =

//assert(is_array(input)||index!=undef)

(index==undef||carry==undef)?
    array_dimensionality(input,0,[]):
    
(!is_list(input))?
    carry:
    
(
  (is_list(input))
)?
    array_dimensionality(input[0],index+1,concat(carry,[len(input)])):
    
    assert(false);
    
    
    echo(array_dimensionality([[2,2,2],[2,2]]));