include <master_connector.scad>

string_select = "
function takes a string and an index list, returns selected indices concated into a new string
arguments:
-input expects string
-indexant expects numlist not outbounding input length
-pointer expects num internal
-carry expects string internal
";

function string_select(input,indexant,pointer,carry) = 

assert(is_string(input))

assert(is_list(indexant))

(
  (ndef(pointer))
||(ndef(carry))
)?
    string_select(input,indexant,0,""):

(
  (pointer>=len(indexant))
)?
    carry:

assert((indexant[pointer])<len(input))

(
  (pointer<len(indexant))
)?
    string_select(input,indexant,pointer+1,str(carry,input[indexant[pointer]])):

assert(false,"function definition overrun for function string_select");

test_string_1 = "the quick red fox jumps over the lazy brown dog";

echo(test_string_1);

test_indexant_1 = [for(q=[0:1:10]) round(rands(0,len(test_string_1)-1,1)[0]) ];

echo(test_indexant_1);

echo(string_select(test_string_1,test_indexant_1));

for(q=[0:1:len(test_indexant_1)-1]) echo(test_indexant_1[q]<=len(test_string_1));