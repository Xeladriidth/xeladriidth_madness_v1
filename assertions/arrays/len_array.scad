include <master_connector.scad>

len_array = "function takes an array and performs an assessment of data content, returns a nested list describing data structure
arguments:
-input expects array
-pointer expects internal depth/width index as list-num-2
-carry expects internal list
";

test_array_1 = [
1,1,
for(a=[0:1])
for(b=[0:1])
for(c=[0:1])
[a,b,c],1,1
]; //equates to a [2]array with a [8,2] array on position 0
//offload length assessment of square subelements to subfunction?
//rely on subfunction array_is_square, if observed element is square, embed into carry, move on
//if not square, pack individual lengths into a sublist by calling a subfunction inside concaty(carry,addendum,subfunction)

echo(test_array_1); //result should thus be [2,[9,2],2]

//test: (  (is_array(input))&&(!is_array

function len_array(input,pointer,carry) = 

assert(is_array(input))

(
  (ndef(pointer))
||(ndef(carry))
)?
    len_array(input,0,[]):

(
  (pointer>=len(input))
)?
    carry:

(
  (is_array(input[pointer]))
)?
    len_array(input,pointer+1,concat(carry,[[len_array(input[pointer])]])):

(
  (pointer<len(input))
&&(!is_list(input[pointer]))
)?
    len_array(input,pointer+1,concat(carry,1)):

(
  (pointer<len(input))
&&(is_list(input))
)?
    len_array(input,pointer+1,concat(carry,len(input[pointer]))):


assert(false,"function definition overrun for function len_array");

echo(len_array(test_array_1));