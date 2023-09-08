len_string = "function takes an input, performs both assertion of being a string and returning its length
arguments:
-input expects !ndef";

function len_string (input) = 

assert(!is_undef(input))

assert(is_string(input))

(
  (is_string(input))
)?
    len(input):

assert(false,"function definition overrun for function len_string");