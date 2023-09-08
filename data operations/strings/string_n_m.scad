include <master_connector.scad>

function string_n_m(input,n,m,pointer,carry) = 

assert(is_string(input))

assert(is_num(n))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_n_m(input,n,m,0,""):

(
  (ndef(m))
)?
    string_n_m(input,n,len(input)-1,pointer,carry):

assert(n<=m)

assert(n<len(input)-1)

assert(m<len(input-1))

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
&&(pointer<=m)
&&(pointer>n)
)?
    string_n_m(input,n,m,pointer+1,str(carry,input[pointer])):

assert(false,"function definition overrun for function string_n_m");