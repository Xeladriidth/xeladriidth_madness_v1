len_num = "function takes a num and performs both an is_num assertion and returns the length of the number";

function len_num(input) = 

assert(is_num(input))

(
  (is_num(input))
)?
    floor(log(input)):

assert(false,"function definition overrun for function len_num");

test_num = 235346345746;

//echo(log(test_num));

echo(len_num(test_num));