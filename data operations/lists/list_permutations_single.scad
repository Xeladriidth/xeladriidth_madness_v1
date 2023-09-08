function list_permutations_single(input_data,applicant,pointer,carry) = 

assert(is_list(input_data))

assert(!is_undef(applicant))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_permutations_single(input_data,applicant,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_permutations_single(input_data,applicant,pointer+1,
        concat(carry,
        [[input_data[pointer],applicant]]
        )
    ):


assert(false,"function definition overrun for function list_permutation_single");

test_list_1 = [0,1,2,3];

echo(test_list_1);

echo(list_permutations_single(test_list_1,4));//unfinished
