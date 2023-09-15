include <master_connector.scad>

string_replace = "
function takes a string, an indexant and a replacement; function returns a string with the replacement inserted into the specified indices
arguments: 

";

function string_replace(input,indexant,replacement,pointer,carry) =

assert(is_string(input))

assert(is_list(indexant)||is_num(indexant))

assert(is_string(replacement))

(
  (ndef(pointer))
)?
    string_replace(input,indexant,replacement,0,string_to_list(input)):

(
  (pointer>=len(indexant))
)?
    list_to_string(unfold_complete(carry)):

(
  (pointer<len(indexant))
)?
    list_to_string

assert(false,"function definition overrun for function string_replace");

