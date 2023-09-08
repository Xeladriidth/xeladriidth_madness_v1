include <master_connector.scad>

function list_expand(input_data,n,pointer,carry) = 

assert(is_list(input))

(
  (is_undef(n))
)?
    list_expand(input_data,1,pointer,carry):

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_expand(input_data,n,0,[]):


assert(false,"function definition overrun for function list_expand");

test_list_1 = [0,1,2,3,4];

echo(list_expand(test_list_1,2));

echo(list_expand(test_list_1,2)[0]);

//echo(list_expand(list_expand(test_list_1)));//unfinished
