function string_upto_n(input_data,n,pointer,carry) =

assert(is_string(input_data))

assert(is_num(n)) assert(n<=len(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    string_upto_n(input_data,n,0,[]):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(pointer>=n)
)?
    string_upto_n(input_data,n,pointer+1,carry):

(
  (pointer<len(input_data))
&&(pointer<n)
)?
    string_upto_n(input_data,n,pointer+1,
        concat(carry,input_data[index])
    ):

assert(false, "function definition overrun for function string_upto_n");
