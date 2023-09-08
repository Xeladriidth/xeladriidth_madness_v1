include <master_connector.scad>

test_list_1 = [[[2,2],[3,3]],[[2,2],[3,3]]];

echo(unfold(test_list_1));

function unfold_single(input_data,pointer,carry) = 

assert(is_list(input_data))

(
  (ndef(pointer))
||(ndef(carry))
)?
    unfold_single(input_data,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    unfold_single(input_data,pointer+1,
    concat(
        carry,
        input_data[pointer]
        )
    ):

assert(false,"function definition overrun for function unfold_single");

function unfold(input_data,n,pointer) = 

assert(is_list(input_data))

(
  (ndef(n))
)?
    unfold(input_data,1,pointer):

(
  (ndef(pointer))
)?
    unfold(input_data,n,0):

(
  (pointer>=n)
)?
    input_data:

(
  (pointer<n)
)?
    unfold(
        unfold_single(input_data),
    n,
    pointer+1
    ):

assert(false,"function definition overrun for function unfold");

echo(test_list_1);

echo(unfold(test_list_1));//unfinished
