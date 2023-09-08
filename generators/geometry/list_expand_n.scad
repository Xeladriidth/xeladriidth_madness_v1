include <master_connector.scad>

function list_expand_n(input_data,n,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(n))
)?
    list_expand_n(input_data,1,pointer,carry):

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_expand_n(input_data,n,0,[]):

(
  (pointer>n)
)?
    input_data:

(
  (pointer<=n)
)?
    list_expand_n(
        list_expand(input_data),
    n,
    pointer+1,
    carry):



assert(false,"function definition overrun for function list_expand_n");



//expand the list n times
//means invocating list_expand upon dataset recursively n times

test_list_1 = [ for(q=[0:1:3]) q];

echo(test_list_1);

echo(list_expand(test_list_1));

echo(len(list_expand(test_list_1)));

echo(list_expand(list_expand(test_list_1)));

echo(list_expand_n(test_list_1,2));//unfinished
