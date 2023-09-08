function list_longest_str(input_data,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    list_longest_str(input_data,0,0):
// num initialise

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
&&(input_data[pointer]>carry)
)?
    list_longest_str(input_data,pointer+1,len(input_data[pointer])):

(
  (pointer<len(input_data))
&&(input_data[pointer]<=carry)
)?
    list_longest_str(input_data,pointer+1,carry):

assert(false,"function definition overrun for function list_longest_str");//unfinished
