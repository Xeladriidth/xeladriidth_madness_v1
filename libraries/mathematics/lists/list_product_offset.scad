function list_product_offset(input_data,offset,pointer,carry) = 

assert(is_list(input_data))

(
  (is_undef(offset))
)?
    list_product_offset(input_data,0,pointer,carry):

(
  (pointer>=len(input_data))
)?
    carry:

(
  (pointer<len(input_data))
)?
    list_product_offset(input_data,offset,pointer+1,carry*(offset+input_data[pointer])):

assert(false,"function definition overrun for function list_product_offset");
