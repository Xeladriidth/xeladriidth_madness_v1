include <master_connector.scad>

function unfold_complete(input_data) = 

(
  (!is_array(input_data))
)?
    input_data:

(
  (is_array(input_data))
)?
    unfold_complete(unfold(input_data)):

assert(false);

test_list_1 = random_list(128);

test_array_1 = fold(test_list_1,[2,2,2,2]);

echo(test_array_1);

//echo(condit(test_list_1,unfold_complete(test_array_1)));