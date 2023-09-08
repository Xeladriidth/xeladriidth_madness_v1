include <master_connector.scad>

function array_is_euclidic2(input,pointer) =

assert(is_list(input))

//goal: write branching monoform function that checks entire array
//am i at bottom+1? run length check
//am i not at bottom? run check through all my elements

(
  (is_array(input))
&&(!is_array(input[0]))
&&(ndef(pointer))
)?
    array_is_euclidic2(input,0):

(
  (is_array(input))
&&(!is_array(input[0]))
&&(pointer>=len(input))
)?
    true:

(
  (is_array(input))
&&(!is_array(input[0]))
&&(pointer<len(input))
&&(len(input[pointer])!=len(input[0]))
)?
    false:

(
  (is_array(input))
&&(!is_array(input[0]))
&&(pointer<len(input))
&&(len(input[pointer])==len(input[0]))
)?
    array_is_euclidic2(input,pointer+1):

(
  (is_array(input))
&&(is_array(input[0]))
&&(array_is_euclidic2(input[0]))
&&(ndef(pointer))
)?
    array_is_euclidic2(input,0):

(
  (is_array(input))
&&(is_array(input[0]))
&&(array_is_euclidic2(input[pointer]))
&&(pointer>=len(input))
)?
    true:

(
  (is_array(input))
&&(is_array(input[0]))
&&(array_is_euclidic2(input[pointer]))
&&(pointer<len(input))
)?
    array_is_euclidic2(input,pointer+1):

(
  (is_array(input))
&&(is_array(input[0]))
&&(!array_is_euclidic2(input[pointer]))
&&(pointer<len(input))
)?
    false:

assert(false,"function definition overrun for function array_is_euclidic2");

//finished