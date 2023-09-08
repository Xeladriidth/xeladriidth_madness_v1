function list_product_offset(input_data,raiser,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(raiser))
)?
    list_product_offset(input_data,0,pointer,carry):

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_product_offset(input_data,raiser,0,1):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_product_offset(input_data,raiser,pointer+1,carry*(raiser+input_data[pointer])):

assert(false,"function definition overrun for function list_product_offset");


test_list_1 = [for(q=[0:1:10]) q];

//echo(list_product_offset(test_list_1,1));//unfinished
