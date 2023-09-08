include <master_connector.scad>

select = "

";

function select(input_data,selector,pointer,carry) = 

assert(!ndef(input_data))

(
  (ndef(selector))
||(span(selector)==0)
)?
    input_data:

//section a - initialise for different input data types
//available input types: -single index -list -multi array coordinates (oh noes)

//available data types: -list -string -array -table

//this function shalt concern itself as a waystation, directing by input type

(
  (span(input_data)<=0.5*span(selector))
)?
    assert(false,"here shalt be an inversion of the function select"):

(
  (is_array(input_data))
)?
    select_array:


assert(false,"function definition overrun for function select");//unfinished
