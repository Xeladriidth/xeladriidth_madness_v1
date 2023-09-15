function string_except_n_m(input_data,n,m,pointer,carry) = 

assert(is_string(input_data))

assert(is_num(n))

assert(is_num(m))

assert(n<=m)

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    string_except_n_m(input_data,n,m,0,""):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&
    (
      (pointer>=m)
    ||(pointer<n)
    )
)?
    string_except_n_m(input_data,n,m,pointer+1,str(carry,input_data[pointer])):

(
  (pointer<len(input_data))
&&
    !(
      (pointer>=m)
    ||(pointer<n)
    )
)?
    string_except_n_m(input_data,n,m,pointer+1,carry):

assert(false,"function definition overrun for function string_except_n_m");

//unfinished
