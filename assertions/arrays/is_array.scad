//this file contains the assertion function is_array

//an array currently is defined as any list of lists with unspecified length, content, dimensionality etc

function is_array(input,index) =

assert(is_list(input))

//paradigm: has the object a length and does any subsidiary have a length?
    
(index==undef)?
    is_array(input,0):
    
(index>=len(input))?
    false:
    
(is_list(input[index]))?
    true:
    
is_array(input,index+1);

