is_word = "
arguments -input_data(expects string) -pointer (init 0)
";

function is_word (input_data,pointer) = 

assert(is_string(input_data))

(
  (is_undef(pointer))
)?
    is_word (input_data,0):

(
  (pointer==len(input_data))
&&(input_data[pointer]==" ")
)?
    true:

(
  (pointer==len(input_data))
&&(input_data[pointer]!=" ")
)?
    false:

assert(false,"function definition overrun for function is_word");//unfinished
