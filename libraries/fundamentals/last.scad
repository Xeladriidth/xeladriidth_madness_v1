//retrieves last element of any input

//paradign: exists object with higher index number? no-> exit list[index]

function last(input,index) = 

assert(!is_undef(input))

(
  (is_list(input))
)?
    last(input,0):

(
  (is_list(input))
&&(is_undef(input[index+1]))
&&(!is_undef(input[index]))
)?
    input[index]:

(
  (is_list(input))
&&(!is_undef(input[index+1]))
)?
    last(input,index+1):

assert(false, "function definiton incomplete in function last");