//directive: duplicate list by duplicating entries in series

function list_duplicate_entries(input_list,index,carry) =

assert(is_list(input_list))

(
  (index==undef)
||(carry==undef)
)?
    list_duplicate_entries(input_list,0,[]):

(
  (index>=len(input_list))
)?
    carry:


(
  (index<len(input_list))
)?
    list_duplicate_entries(input_list,index+1,
        concat(carry,
            [input_list[index]],[input_list[index]]
        )
    ):

assert(false,"function definition overrun for function list_duplicate_entries");//unfinished
