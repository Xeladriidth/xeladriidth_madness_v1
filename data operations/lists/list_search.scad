include <master_connector.scad>

function list_search(input_data,searchant,pointer,carry) = 

assert(is_list(input_data))

(
  is_undef(pointer)
||is_undef(carry)
)?
    list_search(input_data,searchant,0,[]):

(
  (pointer>=len(input_data))
||((pointer+len(searchant)-1)>=len(input_data))
)?
    carry:

(
  ((pointer+len(searchant)-1)<len(input_data))
&&
    (
      (searchant)
    ==(list_n_m(input_data,pointer,pointer+len(searchant)))
    )
)?
    list_search(input_data,searchant,pointer+1,
        concat(carry,pointer
        )
    ):

(
  ((pointer+len(searchant)-1)<len(input_data))
&&
    (
      (searchant)
    !=(list_n_m(input_data,pointer,pointer+len(searchant)))
    )
)?
    list_search(input_data,searchant,pointer+1,carry):

assert(false,"function definition overrun for function list_search");

test_list_1 = [for(q=[0:1:10]) q];

echo(test_list_1);

echo(list_search(test_list_1,[9,10]));//unfinished
