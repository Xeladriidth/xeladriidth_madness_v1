include <master_connector.scad>

is_substring = "
function takes two arguments - a target string and a search string. if the search string is contained within the target, the function will output a list of indices. if no substring is found, an empty list is returned.
arguments:
-target: list upon which substrings are compared(expects string)
-searchant: search object to be looked up(expects string)
";

function is_substring(target,searchant,pointer,carry) = 

assert(is_string(target))

assert(is_string(searchant))

(
  (ndef(pointer))
||(ndef(carry))
)?
    is_substring(target,searchant,[0,0],[]):

assert(false,"function definition overrun for function is_substring");

test_string = "the quick brown fox jumps over the lazy dog";