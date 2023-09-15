function invert_string(input_data,pointer,carry) =

assert(is_string(input_data))

(
  (is_undef(pointer))
||(is_undef(carry))
)?
    invert_string(input_data,0,[]):

(
  (index>=len(input_data))
)?
    carry:

(
  (index<len(input_data))
)?
    invert_string(input_data[index],carry):

assert(false,"function definition overrun for function invert_string");


string_a = "a";

string_b = "b";

echo(string_a,string_b);

echo(str(string_a,string_b));//unfinished
