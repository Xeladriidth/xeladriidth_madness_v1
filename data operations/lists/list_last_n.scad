function list_last_n(input_data,n,pointer,carry) =

assert(is_list(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_last_n(input_data,n,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(pointer>n)
)?
    list_last_n(input_data,n,pointer+1,
        concat(carry,
            [input_data[index]]
        )
    ):

(
  (pointer<len(input_data))
&&(pointer<n)
)?
    list_last_n(input_data,n,pointer+1,carry):

assert(false,"function definition overrun for function list_last_n");