include <master_connector.scad>

list_insert_single = "
function takes a list plus a projectile,
anatomy is [index,payload]
returns new list with every element including the new one
arguments:
-input_list -expects 
";

function list_insert_single(input_data,insert,pointer,carry) = 

assert(is_list(input_data))

assert(is_list(insert))

//insert anatomy: [aim,projectile]

(
  (ndef(pointer))
||(ndef(carry))
)?
    list_insert_single(input_data,insert,0,[]):

(
  (pointer>len(input_data))
)?
    carry:

(
  (pointer<insert[0])
)?
    list_insert_single(input_data,insert,pointer+1,concat(carry,input_data[pointer])):

(
  (pointer==insert[0])
)?
    list_insert_single(input_data,insert,pointer+1,concat(carry,insert[1])):

(
  (pointer>insert[0])
)?
    list_insert_single(input_data,insert,pointer+1,concat(carry,input_data[pointer-1])):

assert(false,"function definition overrun for function list_insert_single");

test_list_1 = [for(q=[0:1:10]) q];

test_insert_1 = [2,11];

echo(len(test_insert_1));

echo(list_insert_single(test_list_1,test_insert_1));//unfinished
