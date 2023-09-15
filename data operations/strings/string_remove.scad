include <master_connector.scad>

string_remove = "
function takes an input string aswell as an indexant, returns string minus the removed indices;
arguments:
-input expects string
-indexant expects list-num not outbounding input_len
-pointer expects internal num
-carry expects internal string-carry
";

function string_remove(input,indexant,pointer,carry) = 

assert(is_string(input))

assert(is_list(indexant))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_remove(input,indexant,0,string_to_list(input)):

(
  (pointer>=len(indexant))
)?
    string_remove_cleanup(carry):

assert(indexant[pointer]<=len(input))

(
  (pointer<len(indexant))
)?
    string_remove(input,indexant,pointer+1,
        concat(
    list_upto_n(carry,indexant[pointer]-1),
    ["%%removed_by_string_remove%%"],
    list_after_n(carry,indexant[pointer])
        )
    ):

assert(false,"function definition overrun for function string_remove");

test_indexant_1 = [for(q=[0:1:10]) round(rands(0,len(string_remove)-1,1)[0])];

echo(test_indexant_1);

echo(string_remove(string_remove,test_indexant_1));

function string_remove_cleanup(input,pointer,carry) = 

assert(is_list(input))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_remove_cleanup(input,0,[]):

(
  (pointer>=len(input))
)?
    list_to_string(carry):

(
  (pointer<len(input))
&&(input[pointer]!="%%removed_by_string_remove%%")
)?
    string_remove_cleanup(input,pointer+1,concat(carry,input[pointer])):

(
  (pointer<len(input))
&&(input[pointer]=="%%removed_by_string_remove%%")
)?
    string_remove_cleanup(input,pointer+1,carry):

assert(false,"function definition overrun for function string_remove_cleanup");