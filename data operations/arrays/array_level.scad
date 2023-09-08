array_level = "
function returns a numeral representing the depth of an array
calculates faster than calculating a shape vector and taking its length
arguments -input_data(expects array) -carry( init 0)
";

use  <master_connector.scad>
use <connector_master.scad>

function array_level(input_data,carry) = 

//goal of function: scour the depth of some array

assert(array_is_euclidic(input_data))

(
  (input_data=="help")
)?
    assert(false,array_level):

(
  (is_undef(carry))
)?
    array_level(input_data,0):

(
  (is_array(input_data[0]))
)?
    array_level(input_data[0],carry+1):

(
  !(is_array(input_data[0]))
)?
    carry:

undef;

//echo(array_level(test_array_1));//unfinished
