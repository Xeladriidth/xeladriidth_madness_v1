function list_sum(input_data,pointer,carry) =

assert(is_list(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_sum(input_data,0,0):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_sum(input_data,pointer+1,carry+input_data[pointer]):

assert(false,"function definition overrun for function list_sum");

test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_sum(test_list_1));//unfinished
