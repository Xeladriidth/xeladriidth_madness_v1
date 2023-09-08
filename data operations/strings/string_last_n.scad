function string_last_n(input,n,pointer,carry) = 

assert(is_string(input))

assert(is_num(n))

(
  (n>=len(input))
  )?
    input:

(
  (ndef(pointer))
  ||(ndef(carry))
)?
    string_last_n(input,n,0,""):

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
&&(pointer<(len(input)-n))
)?
    string_last_n(input,n,pointer+1,carry):

(
  (pointer<len(input))
&&(pointer<(len(input)-n))
)?
    string_last_n(input,n,pointer+1,str(carry,input[pointer])):

assert(false,"function definition overrun for function string_last_n");