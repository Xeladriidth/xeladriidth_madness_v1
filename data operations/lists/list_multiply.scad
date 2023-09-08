include <master_connector.scad>

test_list_1 = [for(q=[0:1:10]) q];

function list_multiply(input_1,input_2,pointer,carry) =

assert(list_only_nums(input_1))

assert(list_only_nums(input_2))

assert(
  len(input_1)
==len(input_2)
)

(
  (ndef(pointer))
||(ndef(carry))
)?
    list_multiply(input_1,input_2,0,[]):

(
  (pointer>=len(input_1))
)?
    carry:

(
  (pointer<len(input_1))
)?
    list_multiply(input_1,input_2,
    pointer+1,
    concat(carry,
    [input_1[pointer]*input_2[pointer]]
    )
    ):

assert(false);

echo(list_multiply(test_list_1,test_list_1));//unfinished
