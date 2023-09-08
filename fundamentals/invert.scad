include <master_connector.scad>

invert = "

";

function invert(input_data,reflector) = 

//goal of function: provide a set of data points, e.g. indices and reflect these on a total data set

//for example, input_data might be a list of indices from function select() onto an array, where select is so large that inverting the list and performing a remove might be more advantageous

assert(!ndef(input_data))

(
  (ndef(reflector))
||(span(reflector)==0)
)?
    input_data:

assert(false,"function definition overrun for function invert");//unfinished
