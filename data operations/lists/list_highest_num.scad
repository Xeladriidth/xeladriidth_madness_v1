include <master_connector.scad>

function list_highest_num(input_data,pointer,carry) = 

assert(is_list(input_data))

assert(list_only_nums(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_highest_num(input_data,0,0):
//num initialise

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(input_data[pointer]>carry)
)?
    list_highest_num(input_data,pointer+1,input_data[pointer]):

(
  (pointer<len(input_data))
&&(input_data[pointer]<=carry)
)?
    list_highest_num(input_data,pointer+1,carry):

assert(false,"function definition overrun for function list_highest_num");

test_list_1 = [ for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_only_nums(test_list_1));

//echo(list_highest_num(test_list_1));//unfinished
