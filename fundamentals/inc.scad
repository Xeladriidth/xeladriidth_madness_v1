//Increment function:
//possible inputs: number, vector, vector + coord, vector + coord + amount, vector + amount

function inc(input_counter,input_amount,input_coordinate,index,carry) =
assert(!is_undef(input_counter))

//(is_num(input_counter)) (is_list(input_counter)) (!is_undef(input_amount)) (is_undef(input_coordinate))
  
(
  (is_num(input_counter))
&&(is_undef(input_amount))
)?
  input_counter+1:
  
(
  (is_num(input_counter))
&&(is_num(input_amount))
)?
  input_counter+input_amount:
  
(
  (is_num(input_counter))
&&(is_num(input_amount))
&&(!is_undef(input_coordinate))
)?
  assert(false,"inconsistency in function inc: numbers cannot be adressed with numerical coordinates"):
  
//begin list branch

(
  (is_list(input_counter))
&&(is_undef(input_amount))
&&(is_undef(input_coordinate))
&&(index==undef||carry==undef)
)? //initialise for undef amount and undef target
    inc(input_counter,1,0,0,[]):

(
  (is_list(input_counter))
&&(!is_undef(input_amount))
&&(is_undef(input_coordinate))
&&(index==undef||carry==undef)
)? //initialise for undef amount and undef target
    inc(input_counter,input_amount,0,0,[]):

(
  (is_list(input_counter))
&&(is_undef(input_amount))
&&(!is_undef(input_coordinate))
&&(index==undef||carry==undef)
)? //initialise for undef amount and undef target
    inc(input_counter,1,input_coordinate,0,[]):

(
  (is_list(input_counter))
&&(!is_undef(input_amount))
&&(!is_undef(input_coordinate))
&&(index==undef||carry==undef)
)? //initialise for undef amount and undef target
    inc(input_counter,input_amount,input_coordinate,0,[]):
    
(
  (is_list(input_counter))
&&(index>=len(input_counter))
)? //provide exit condition for lists
    carry:
    
(
  (is_list(input_counter))
&&(index<len(input_counter))
&&(index!=input_coordinate)
)? //advance for coordinate miss
    inc(input_counter,input_amount,input_coordinate,index+1,
    concat(
    carry,
    [input_counter[index]]
    )
    ):
    
(
  (is_list(input_counter))
&&(index<len(input_counter))
&&(index==input_coordinate)
)? //advance for coordinate miss
    inc(input_counter,input_amount,input_coordinate,index+1,
    concat(
    carry,
    [input_counter[index]+input_amount]
    )
    ):
  
assert(false,"i dont know how we even got here, but you have reached the end of the inc function");
