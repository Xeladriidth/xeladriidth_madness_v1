include <master_connector.scad>

function list_subtract(input_1,input_2,pointer,carry) = 

assert(list_only_nums(input_1))

assert(list_only_nums(input_2))

assert(len(input_1)==len(input_2))

(
  (ndef(pointer))
||(ndef(carry))
)?
    list_subtract(input_1,input_2,0,[]):

(
  (pointer>=len(input_1))
)?
    carry:

(
  (pointer<len(input_1))
)?
    list_subtract(input_1,input_2,inc(pointer),
    concat(carry,
    [input_1[pointer]-input_2[pointer]]
    )
    ):

assert(false);//unfinished
