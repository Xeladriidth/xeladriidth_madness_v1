include <master_connector.scad>

function list_permutations(input_data,exit_length,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(exit_length))
)?
    list_permutations(input_data,len(input_data),pointer,carry):

assert(exit_length<=len(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_permutations(input_data,exit_length,0,[]):

(
  (pointer>=exit_length)
)?
    carry:

(
  (pointer<exit_length)
)?
    list_permutations(
        input_data,
        exit_length,
        pointer+1,
        list_permutations_append(carry,input_data[carry])
    ):

assert(false,"function definition overrun for function list_permutations");//unfinished
