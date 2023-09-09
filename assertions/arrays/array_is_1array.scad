use <master_connector.scad>

array_is_1array = "function takes a list and returns a bool dependent on whether one of its subelements is an array";

function array_is_1array(input,pointer) = 

assert(is_array(input))

(
  (ndef(pointer))
)?
    array_is_1array(input,0):

(
  (pointer>=len(input))
)?
    true:

(
  (pointer<len(input))
&&(is_array(input[pointer]))
)?
    false:

(
  (pointer<len(input))
&&(!is_array(input[pointer]))
)?
    array_is_1array(input,pointer+1):

assert(false,"function definition overrun for function array_is_1array");