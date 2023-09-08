include <master_connector.scad>

function list_fold(input_data,folder,pointer) = 

assert(is_list(input_data))

(
  (!is_list(folder))
)?
    fold(input_data,folder):

(
  (is_undef(pointer))
)?
    list_fold(input_data,folder,0):

(
  (pointer>=len(folder))
)?
    input_data:

(
  (pointer<len(folder))
)?
    list_fold(
        fold(input_data,folder[pointer]),
    folder,
    pointer+1):

assert(false,"function definition overrun for function list_fold");//unfinished
