function string_after_n(input_data,n,pointer,carry) =

assert(is_string(input_data))

assert(is_num(n))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    string_after_n(input_data,n,0,""):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(pointer>=n)
)?
    string_after_n(input_data,n,pointer+1,
        str(carry,input_data[pointer])
    ):

(
  (pointer<len(input_data))
&&(pointer<n)
)?
    string_after_n(input_data,n,pointer+1,carry):

assert(false,"function definition overrun for function string_after_n");


test_string_1 = "abcdefghijklmnopqrstuvwxyz";

echo(string_after_n(test_string_1,4));