include <master_connector.scad>

substring = "
function takes a string and a range, returns the part of the string specified by the range
arguments
-input expects string
-range expects: either num or 2-num-list
-pointer expects num internal
-carry expects string internal
";

function substring(input,range,pointer,carry) =

//2 modes: either 1-range or 2-range, possibly with reverse slant - meaning either substring n-m or substring -n m-

assert(is_string(input))

(
  (is_num(range))
&&(ndef(pointer))
||(ndef(carry))
)?
    substring(input,range,0,""):

(
  (is_num(range))
&&(pointer>=range)
)?
    carry:

(
  (is_num(range))
&&(pointer<range)
)?
    substring(input,range,pointer+1,str(carry,input[pointer])):

(
  (is_list(range))
&&(range[1]>range[0])
&&(ndef(pointer))
&&(ndef(carry))
)?
    substring(input,range,0,""):

(
  (is_list(range))
&&(range[1]>range[0])
&&(pointer>=range[1])
)?
    carry:

(
  (is_list(range))
&&(range[1]>range[0])
&&(pointer<range[1])
&&(pointer>=range[0])
)?
    substring(input,range,pointer+1,str(carry,input[pointer])):

(
  (is_list(range))
&&(range[1]>range[0])
&&(pointer>=range[1])
||(pointer<range[0])
)?
    substring(input,range,pointer+1,carry):

/*

(
  (is_list(range))
&&(range[1]<range[0])
&&(ndef(pointer))
&&(ndef(carry))
)?
    substring(input,range,0,""):

(
  (is_list(range))
&&(range[1]<range[0])
&&(pointer>=len(input))
)?
    carry:

(
  (is_list(range))
&&(range[1]<range[0])
&&(
(pointer<(len(input)-range[1]))
||(pointer>=range[0])
  )
)?
    substring(input,range,pointer+1,str(carry,input[pointer])):

(
  (is_list(range))
&&(range[1]<range[0])
&&!(
(pointer<(len(input)-range[1]))
||!(pointer>=range[0])
  )
)?
    substring(input,range,pointer+1,carry):

*/ assert(range[0]<=range[1],"proper implementation missing for function substring, case range[1]<range[0]")

assert(false,"function definition overrun for function substring");

test_string_1 = "the quick red fox jumps over the lazy brown dog";

echo(substring(test_string_1,2));

echo(substring(test_string_1,[2,10]));

//echo(substring(test_string_1,[10,2]));