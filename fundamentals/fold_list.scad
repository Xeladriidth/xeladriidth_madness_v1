include <master_connector.scad>

function fold_list(input_data,folder,pointer) = 

assert(is_list(input_data))

(
  (!is_list(folder))
)?
    fold(input_data,folder):

(
  (is_undef(pointer))
)?
    fold_list(input_data,folder,0):

(
  (pointer>=len(folder))
)?
    input_data:

(
  (pointer<len(folder))
)?
    fold_list(
        fold(input_data,folder[pointer]),
    folder,
    pointer+1):

assert(false,"function definition overrun for function fold_list");

test_list_1 = random_list(128);

echo(test_list_1);

echo(fold(test_list_1,2));

echo(fold_list(test_list_1,[2,2]));//unfinished
