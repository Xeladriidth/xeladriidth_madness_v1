include <master_connector.scad>

function condit(template,sample,pointer,carry) = 

assert(!is_undef(template)) 

assert(!is_undef(sample))

assert(same_type(template,sample))

//directive: build a function that takes in two arbitrary data sets and decides a bool value; exit value must be either true, false or undef to make lean code

//a: define input categories

(
  (is_num(template))
&&(template==sample)
)?
    true:

(
  (is_num(template))
&&(template!=sample)
)?
    false:

(
  (is_string(template))
&&(template==sample)
)?
    true:

(
  (is_string(template))
&&(template!=sample)
)?
    false:

(
  (is_list(template))
&&(list_is_flat(template))
&&(list_is_flat(sample))
&&(len(template)!=len(sample))
)?
    assert(false,"no policy established for length mismatch lists in function condit"):

(
  (is_list(template))
&&(is_undef(pointer))
)?  //begin list tree, initialise
    condit(template,sample,0):

(
  (is_list(template))
&&(pointer<len(template))
&&(template[pointer]!=sample[pointer])
)?
    false:

(
  (is_list(template))
&&(pointer<len(template))
&&(template[pointer]==sample[pointer])
)?
    condit(template,sample,inc(pointer),carry):

(
  (is_list(template))
&&(pointer>=len(template))
)?
    true:

(
  is_array(template)
&&(is_undef(pointer))
)?
    assert(false,"no policy established for array matching in function condit"):

assert(false,"function definition overrun for function condit");


test_list_1 = [for(q=[0:1:10]) q];

test_list_2 = [for(q=[0:1:9]) q,11];

echo(condit(test_list_1,test_list_2));

//echo(is_list(test_list_1));

//there exists a requirement for branched conditionals; how will we integrate this into this function here?

//second mode shalt be establiehed if the sample consists only of bools//unfinished
