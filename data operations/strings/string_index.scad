include <master_connector.scad>

index_string = "
function takes an input string and returns all occurences of the searchant in target string as an index list
arguments:
-input expects string
-searchant expects string
-pointer expects 2-list-num internal
-carry expects index list internal
";

function index_string(input,searchant,pointer,carry) = 

assert(is_string(input))

assert(is_string(searchant))

(
  (ndef(pointer))
||(ndef(carry))
)?
    index_string(input,searchant,0,[]):

(
  (pointer>=len(input))
)?
    carry:

(
  (pointer<len(input))
&&(substring(input,[pointer,pointer+len(searchant)])==searchant)
)?
    index_string(input,searchant,pointer+1,concat(carry,pointer)):

(
  (pointer<len(input))
&&(substring(input,[pointer,pointer+len(searchant)])!=searchant)
)?
    index_string(input,searchant,pointer+1,carry):

assert(false,"function definition overrun for function index_string");

test_string_1 = "the quick red fox jumps over the lazy brown dog";

echo(index_string(test_string_1,"red"));

//finished