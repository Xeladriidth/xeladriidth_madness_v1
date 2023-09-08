function list_expand_single(input_data,n,pointer,carry) = 

assert(is_list(input_data))

assert(is_num(n))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_expand_single(input_data,n,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_expand_single(input_data,n,pointer+1,
        concat(carry,
        [concat(input_data[pointer],n)]
        )
    ):

assert(false,"function definition overrun for function list_expand_single");

//unfinished
