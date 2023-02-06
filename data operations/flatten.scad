use <assertions/lists/list_is_flat.scad>

function flatten(input_data,carry) = 

assert(!list_is_flat(input_data))

(
  (is_undef(carry))
)?
    flatten(input_data,0,[]):

(
  (list_is_flat(input_data))
)?
    carry:

(
  (!list_is_flat(input_data))
)?
    flatten(
        concat(input_data)
    ):

assert(false,"function definition overrun for function flatten");

test_list_flatten = [ [2,2],[2,2]];

echo(test_list_flatten);

//echo(flatten(test_list_flatten));