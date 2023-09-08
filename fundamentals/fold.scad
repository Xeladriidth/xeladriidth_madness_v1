include <master_connector.scad>

function fold(input_data,folder,pointer,carry) = 

assert
    (
      (is_list(input_data))
    ||(is_string(input_data))
    )

assert
    (
      (is_num(folder))
    ||(is_list(folder))
    )

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    fold(input_data,folder,0,[]):

(
  (is_string(input_data))
)?
    assert(false,"function fold not yet built for string input"):

(
  (is_list(folder))
)?
    fold_list(input_data,folder):

assert(
  (len(input_data)/(folder))
==(floor(len(input_data)/(folder)))
)

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    fold(input_data,folder,pointer+(folder),
        concat(carry,
            [list_n_m(
                input_data,pointer,pointer+(folder)
            )]
        )
    ):

assert(false,"function definition overrun for function fold");

test_list_1 = [for(q=[0:1:127]) q];

echo(test_list_1);

echo(fold_list(test_list_1,[2,2]));//unfinished
