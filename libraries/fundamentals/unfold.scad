include <master_connector.scad>

function unfold(input_data,pointer,carry) = 

assert(!is_undef(input_data))

(
  (is_num(input_data))
)?
    input_data:

(
  (is_string(input_data))
)?
    input_data:

(
  (is_bool(input_data))
)?
    undef:

(
  (is_list(input_data))
&&(
    (is_undef(pointer))
  ||(is_undef(carry))
  )
)?
    unfold(input_data,0,[]):

(
  (is_list(input_data))
&&(pointer>=len(input_data))
)?
    carry:


(
  (is_list(input_data))
&&(pointer<len(input_data))
)?
    unfold(input_data,pointer+1,
        concat(carry,
            input_data[pointer]
        )
    ):


assert(false,"function definition overrun for function unfold");


test_list_1 = [[2,2],[3,3]];


echo(unfold(test_list_1));