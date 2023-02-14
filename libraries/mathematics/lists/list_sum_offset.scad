function list_sum_offset(input_data,offset,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(offset))
)?
    list_sum_offset(input_data,0,pointer,carry):

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_sum_offset(input_data,offset,0,0):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_sum_offset(input_data,offset,pointer+1,carry+offset+input_data[pointer]):

assert(false,"function definition overrun for function list_sum_offset");


/*
test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_sum_offset(test_list_1,1));

*/