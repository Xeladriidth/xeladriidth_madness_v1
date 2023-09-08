include <master_connector.scad>

function array_only_strings(input_data) = 

assert(
  (is_array(input_data))
||(is_list(input_data))
)

(
  (is_list(input_data))
&&(list_is_flat(input_data))
)?
    list_only_strings(input_data):

(
  (is_array(input_data))
)?
    list_only_strings(unfold_complete(input_data)):

assert(false,"function definition overrun for function array_only_nums");