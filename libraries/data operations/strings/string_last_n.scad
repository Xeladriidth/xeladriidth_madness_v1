function string_last_n(input_data,n,pointer,carry) =

assert(is_string(input_data))

assert(is_num(n))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    string_last_n(input_data,n,0,""):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(pointer>=(len(input_data)-n))
)?
    string_last_n(input_data,n,pointer+1,str(carry,input_data[pointer])):

(
  (pointer<len(input_data))
&&(pointer<(len(input_data)-n))
)?
    string_last_n(input_data,n,pointer+1,carry):

assert(false,"function definition overrun for function string_last_n");

test_string_1 = "abcdefhghijklmnopqrstuvwxyz";

for(q=[0:1:len(test_string_1)-1])

echo(string_last_n(test_string_1,q));