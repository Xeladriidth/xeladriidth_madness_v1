include <master_connector.scad>

//goal of function: provide a measure of total data contained within single object that works agnostically of input format and is extendable to hitherto unknown formats

function span (input_data,index,carry) =

assert(!is_undef(input_data))

(
  (is_num(input_data))
)?
    floor(log(10,input_data)):

(
  (is_string(input_data))
)?
    len(input_data):

(
  (is_list(input_data))
||(list_is_flat(input_data))
)?
    len(input_data):


(
  (!is_list(input_data))
&&(!is_string(input_data))
&&(!is_num(input_data))
)?
    assert(false,"unrecognized data format in function span"):

(
  (is_list(input_data))
&&(!list_is_flat(input_data))
)?
    span(flatten(input_data),0,0):

(
  (is_list(input_data))
&&(list_is_flat(input_data))
&&(index>=len(input_data))
)?
    carry:

(
  (is_list(input_data))
&&(list_is_flat(input_data))
&&(index<len(input_data))
)?
    span(input_data,index+1,carry+1):

assert(false,"function definion overrun for function span");


test_string = "fhsfhdfjshtdh";

test_number = 436532673;

test_list = [for(q=[0:1:10]) q];

test_array = [[[1,2],[3,4]],[[5,6],[7,8]]];


echo(span(test_string));

echo(span(test_number));

echo(log(10,test_number));

echo(span(test_array));//unfinished
