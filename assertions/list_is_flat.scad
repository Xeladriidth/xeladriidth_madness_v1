include <master_connector.scad>

function list_is_flat(input_data,index) = 

assert(is_list(input_data))

(
  (is_undef(index))
)?
    list_is_flat(input_data,0):

(
  (index>=len(input_data))
)?
    true:

(
  (index>=len(input_data))
&&(is_list(input_data[len(input_data)-1]))
)?
    false:

(
  (index<len(input_data))
&&(is_list(input_data[index]))
)?
    false:

(
  (!is_undef(index))
&&(index>=len(input_data))
&&(!is_list(input_data[index]))
)?
    list_is_flat(input_data,index+1):




assert(false,"function definition overrun for function list_is_flat");

test_list_1 = [for(q=[0:1:10])q];

test_array_1 =[[2,2],[2,2]];

echo(test_list_1);

echo(list_is_flat(test_list_1));