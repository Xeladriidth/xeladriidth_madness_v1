function list_upto_n(input_data,n,pointer,carry) = 

assert(is_list(input_data))

assert(is_num(n)&&(n>=0))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_upto_n(input_data,n,0,[]):

(
  (pointer>=n)
)?
    carry:

(
  (pointer<n)
)?
    list_upto_n(input_data,n,pointer+1,
        concat(carry,
            [input_data[pointer]]
        )
    ):

assert(false,"function definition overrun for function list_upto_n");