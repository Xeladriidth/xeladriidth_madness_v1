include <master_connector.scad>

len_array = "function takes an array and performs an assessment of data content, returns a nested list describing data structure
arguments:
-input expects array
-pointer expects internal depth/width index as list-num-2
-carry expects internal list
";

function len_array(input,pointer,carry) = 

assert(!ndef(input))

(
  (ndef(pointer))
||(ndef(carry))
)?
    len_array(input,[0,0],[]):
//pointer anatomy: [depth,length]

(
  false//exit condition
)?
    false:

(
  false//run condition depth
)?
    false:

(
  false//run condition length
)?
    false:

assert(false,"function definition overrun for function len_array");

//output format: square array comes to [a,b,c,d]

test_array_1 = [
for(a=[0:1])
for(b=[0:1])
for(c=[0:1])
[a,b,c],1,1
]; //equates to a [2]array with a [8,2] array on position 0
//offload length assessment of square subelements to subfunction?
//rely on subfunction array_is_square, if observed element is square, embed into carry, move on
//if not square, pack individual lengths into a sublist by calling a subfunction inside concaty(carry,addendum,subfunction)

echo(test_array_1);