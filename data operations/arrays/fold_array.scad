include <master_connector.scad>

function fold_array(input_data,folder,pointer) =

assert(
    (is_list(input_data))
  ||(is_array(input_data))
    )

assert(list_only_nums(folder))

(
  (ndef(pointer))
)?
    fold_array(input_data,folder,0):

(
  (pointer>=len(folder))
)?
    carry:

(
  (pointer<len(folder))
)?
    fold_array(
        fold(input_data,folder[pointer]),
        folder,
        inc(pointer)
    ):

assert(false);


echo(random_list(20));

echo(fold(random_list(20),2));

echo(fold(fold(random_list(20),2),5));//unfinished
