include <master_connector.scad>

function list_permutations_append(input_data,appendix,pointer,carry) =

assert(is_list(input_data))

assert(!is_undef(appendix))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_permutations_append(input_data,appendix,0,
        []
    ):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_permutations_append(input_data,appendix,pointer+1,
        concat(carry,[concat(input_data[pointer],appendix)])
    ):

assert(false,"function definition overrun for function list_permutation_append");

test_list_1 = [for(q=[0:1:10]) [q,0]];

//echo(test_list_1);

echo(list_permutations_append(test_list_1,11));//unfinished
