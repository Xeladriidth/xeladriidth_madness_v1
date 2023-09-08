use <assertions/monoliths/is_dual.scad>
use <assertions/lists/list_only_strings.scad>
use <master_connector.scad>

function is_monolith(input,pointer) = 

assert(!ndef(input))

(
  (!is_list(input))
)?
    false:

(
  (is_undef(pointer))
)?
    is_monolith(input,0):

(
  (pointer>=len(input))
)?
    true:

(
  (pointer<len(input))
&&(!is_dual(input))
)?
    false:

(
  (pointer<len(input))
&&(is_dual(input))
)?
    is_monolith(input,pointer+1):

assert(false,"function definition overrun for function is_monolith");

test_array = [for(q=[0:1:127]) round(rands(0,9,1)[0])];

//echo(test_array);

test_index = [for(q=[0:1:12]) round(rands(0,127,1)[0])];

//echo(test_index);

test_monolith = [
//[
[test_array,"test_array"],
[test_index,"test_index"],
[0,"test_pointer"],
[[],"test_carry"]
//],["content","descriptor"]
];

//echo(is_monolith(test_monolith));

echo((test_monolith[3]));

echo(is_dual(test_monolith[3]));

