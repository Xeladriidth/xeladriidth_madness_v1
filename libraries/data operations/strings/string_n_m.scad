function string_n_m(input_data,n,m,pointer,carry) =

assert(is_string(input_data))

assert(is_num(n))  assert(is_num(m))

assert(m>=n)

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    string_n_m(input_data,n,m,0,""):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(pointer<m)
&&(pointer>=n)
)?
    string_n_m(input_data,n,m,pointer+1,str(carry,input_data[pointer])):

(
  (pointer<len(input_data))
&&(
    (pointer>=m)
  ||(pointer<n)
  )
)?
    string_n_m(input_data,n,m,pointer+1,carry):

assert(false,"function definition overrun for function string_n_m");

test_string_1 = "abcdefghijklmnopqrstuvwxyz";

echo(test_string_1);

for(q=[1:1:len(test_string_1)-1]) 

echo(string_n_m(test_string_1,q-1,q));