include <master_connector.scad>

string_to_list = "function takes an input string, converts it to an encapsulated list of single characters, used by functions like string_remove and string_replace;
arguments: 
-input expects string
-pointer expects num internal
-carry expects list internal";

function string_to_list(input,pointer,carry) = 

assert(is_string(input))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_to_list(input,0,[]):

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
)?
    string_to_list(input,pointer+1,concat(carry,[input[pointer]])):

assert(false,"function definition overrun for function string_to_list");
