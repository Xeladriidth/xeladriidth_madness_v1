include <master_connector.scad>

default_pointer = "
function takes either a num or a vector, generates a zero-filled list-num or array-num with the input as outline
arguments:
size -expects list-num or num
pointer -expects num internal
carry -expects list internal
";

function default_pointer(input,pointer,carry) = 

assert(!ndef(input))

assert(is_num(input)||(is_list(input)))

(
  (ndef(pointer))
||(ndef(carry))
)?
    default_pointer(input,0,[]):

(
  (is_num(input))
&&(pointer>=(input))
)?
    carry:

(
  (is_num(input))
&&(pointer<input)
)?
    default_pointer(input,pointer+1,
    concat(carry,
    [0]
    )
    ):

(
  (list_only_nums(input))
)?
    fold(default_pointer(list_product_offset(input)),
    input):

assert(false,"function definition overrun for function default_pointer");

echo(default_pointer([10,10]));

