function list_encapsulate(input_data,pointer,carry) = 

assert(!is_undef(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_encapsulate(input_data,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_encapsulate(input_data,pointer+1,
        concat(carry,
        [[input_data[pointer]]]
        )
    ):

assert(false,"function definition overrun for function list_encapsulate");

test_list_1 = [for(q=[0:1:10]) q];

echo(list_encapsulate(test_list_1));//unfinished
