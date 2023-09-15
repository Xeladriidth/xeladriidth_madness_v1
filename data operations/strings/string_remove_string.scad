include <master_connector.scad>

string_remove_string = "function takes a string and an array of indices and lengths; returns the input string minus the indices offset by their dual lengths
arguments:
-input expects string
-indexant expects 2-array-num
-pointer expects 2-list-num internal
-carry expects string
";

function string_remove_string(input,indexant,pointer,carry) = 

assert(is_string(input))

assert(is_list(indexant))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_remove_string(input,indexant,0,string_to_list(input)):

(
  (pointer>=len(indexant))
)?
    string_remove_string_cleanup(carry):

assert(indexant[pointer][1]+indexant[pointer][0]<=len(input))

(
  (pointer<len(indexant))
)?
    string_remove_string(input,indexant,pointer+1,
        concat(
    list_upto_n(carry,indexant[pointer][0]-1),
    string_remove_string_placeholder(indexant[pointer][1]),
    list_after_n(carry,indexant[pointer][0]+indexant[pointer][1])
        )
    ):

assert(false,"function definition overrun for function string_remove_string");

test_indexant = [ for(q=[0:1:10]) [ round(rands(0,len(string_remove_string)-10,1)[0]),round(rands(0,9,1)[0])] ];

echo(test_indexant);

function string_remove_string_placeholder(n,carry) = 
assert(is_num(n))

(
  (ndef(carry))
)?
    string_remove_string_placeholder(n,[]):

(
  (len(carry)>=n)
)?
    carry:

(
  (len(carry)<n)
)?
    string_remove_string_placeholder(n,concat(carry,["%%removed_by_string_remove_string%%"])):

assert(false,"function definition overrun for function string_remove_string");

//echo(string_remove_string_placeholder(3));

function string_remove_string_cleanup(input,pointer,carry) = 

assert(is_list(input))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_remove_string_cleanup(input,0,[]):

(
  (pointer>=len(input))
)?
    list_to_string(carry):

(
  (pointer<len(input))
&&(input[pointer]!="%%removed_by_string_remove_string%%")
)?
    string_remove_string_cleanup(input,pointer+1,concat(carry,input[pointer])):

(
  (pointer<len(input))
&&(input[pointer]=="%%removed_by_string_remove_string%%")
)?
    string_remove_string_cleanup(input,pointer+1,carry):

assert(false,"function definition overrun for function string_remove_string_cleanup");

echo(string_remove_string(string_remove_string,test_indexant));