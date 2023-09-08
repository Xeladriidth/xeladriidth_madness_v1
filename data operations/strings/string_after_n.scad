include <master_connector.scad>

function string_after_n(input,n,pointer,carry) = 

assert(is_string(input))

assert(is_num(n))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_after_n(input,n,0,""):

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
&&(pointer>=n)
)?
    string_after_n(input,n,pointer+1,str(carry,input[pointer])):

(
  (pointer<len(input))
&&(pointer<n)
)?
    string_after_n(input,n,pointer+1,carry):

assert(false,"function definition overrun for function string_after_n");

test_string_1 = "the quick red fox jumps over the brown lazy dog";

echo(string_after_n(test_string_1,10));